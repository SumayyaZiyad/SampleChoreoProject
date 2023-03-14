import ballerina/graphql;
import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
    label: "FinanceService",
    id: "FinanceService-9aee08b5-0b49-441c-b221-1e78b2b1e559"
}
service / on new http:Listener(9090) {

    @display {
        label: "PaymentService",
        id: "PaymentService-a6bf7559-a755-4b66-8508-27ca13ebcefc"
    }
    graphql:Client Paymentservice;

    function init() returns error? {
        self.Paymentservice = check new ("");
    }

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
