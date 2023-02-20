import ballerina/io;
import ballerina/websocket;

@display {
	label: "SampleWS",
	id: "SampleWS-6e080bae-9d2a-4cfb-8443-4ae578e7d839"
}
service / on new websocket:Listener(9090) {
    resource function get .() returns websocket:Service {
        // Accept the WebSocket upgrade by returning a `websocket:Service`.
        return new ChatService();
    }
}

service class ChatService {
    *websocket:Service;

    // This `remote function` is triggered when a new message is received
    // from a client. It accepts `anydata` as the function argument. The received data 
    // will be converted to the data type stated as the function argument.
    remote function onMessage(websocket:Caller caller, string chatMessage) returns error? {
        io:println(chatMessage);
        check caller->writeMessage("Hello!, How are you?");
    }
}