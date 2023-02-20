import ballerina/grpc;

@grpc:Descriptor {value: GRPC_SIMPLE_DESC}
@display {
	label: "SampleGRPCInt",
	id: "SampleGRPCInt-8e86a79f-9794-47d4-89bc-6358407f7a5f"
}
service "HelloWorld" on new grpc:Listener(9090) {

    remote function hello(string request) returns string {
        // Reads the request message and sends a response.
        return "Hello " + request;
    }
}
