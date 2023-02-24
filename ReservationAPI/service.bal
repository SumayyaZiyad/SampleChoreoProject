import ballerinax/twitter;
import ballerinax/twilio;
import SumayyaTestOrg/BookingAPI as booking_api;
import SumayyaTestOrg/InventoryAPI as inventory_api;
import ballerina/log;
import ballerina/http;

public type Reservation record {
    *inventory_api:SeatAllocation;
    string origin;
    string destination;
    string contactNo;
};

configurable string twilioAccountSId = ?;
configurable string twilioAuthToken = ?;

configurable string bookingAPIUrl = "http://localhost:7070";

@display {
    label: "ReservationService",
    id: "reservation"
}
service /flights on new http:Listener(6060) {
    @display {
        label: "Twitter",
        id: "twitter-7b1b9e73-e979-472b-9a83-9f9a7fdab948"
    }
    twitter:Client twitterEp;

    function init() returns error? {
        self.twitterEp = check new (config = {
            apiKey: "",
            apiSecret: "",
            accessToken: "",
            accessTokenSecret: ""
        });
    }

    resource function post reservation(@http:Payload Reservation reservation) returns Reservation|error? {
        log:printInfo("Received reservation request for " + reservation.flightNumber);

        @display {
            label: "BookingsService",
            id: "bookings"
        }
        http:Client bookings_apiEndpoint = check new (bookingAPIUrl);
        http:Request bookingRequest = new;
        bookingRequest.setPayload({flightNumber: reservation.flightNumber, origin: reservation.origin, destination: reservation.destination, flightDate: reservation.flightDate, seats: reservation.seats});
        booking_api:BookingRecord bookingResponse = check bookings_apiEndpoint->/booking.post(bookingRequest);
        log:printInfo("Saved Booking : " + bookingResponse.toBalString());
        twilio:ConnectionConfig config = {
            twilioAuth: {

            }
        };
        twilio:Client twilioEndpoint = check new (config);
        twilio:SmsResponse smsResponse = check twilioEndpoint->sendSms("+18312449432", reservation.contactNo, "Booking confirmed for flight " + reservation.flightNumber);
        log:printInfo("SMS Sent " + smsResponse.toBalString());
        return reservation;
    }
}
