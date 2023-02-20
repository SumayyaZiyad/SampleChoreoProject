import ballerina/io;
import ballerina/websocket;

@display {
	label: "SampleQWS",
	id: "SampleQWS-79dc12fd-2896-49c8-a099-872979f322fb"
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