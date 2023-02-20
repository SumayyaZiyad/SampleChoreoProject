import ballerina/grpc;

@grpc:Descriptor {value: GRPC_SIMPLE_DESC}
@display {
	label: "SampleGRPC",
	id: "SampleGRPC-ed50cc27-1f18-4dad-8b2c-d4e586508e0a"
}
service "HelloWorld" on new grpc:Listener(9090) {

    remote function hello(string request) returns string {
        // Reads the request message and sends a response.
        return "Hello " + request;
    }
}
