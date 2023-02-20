import ballerina/grpc;

@grpc:Descriptor {value: GRPC_SIMPLE_DESC}
@display {
	label: "SampleGRPC",
	id: "SampleGRPC-9d848d6a-105e-42f9-98d0-f65bf180fcce"
}
service "HelloWorld" on new grpc:Listener(9090) {

    remote function hello(string request) returns string {
        // Reads the request message and sends a response.
        return "Hello " + request;
    }
}
