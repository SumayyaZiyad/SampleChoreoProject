import ballerina/grpc;

@grpc:Descriptor {value: GRPC_SIMPLE_DESC}
@display {
	label: "SampleGRPC",
	id: "SampleGRPC-d8ac0dfa-6281-4980-861a-d9ad8e2b93b1"
}
service "HelloWorld" on new grpc:Listener(9090) {

    remote function hello(string request) returns string {
        // Reads the request message and sends a response.
        return "Hello " + request;
    }
}
