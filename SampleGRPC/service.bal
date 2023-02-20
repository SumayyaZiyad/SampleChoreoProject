import ballerina/grpc;

@grpc:Descriptor {value: GRPC_SIMPLE_DESC}
@display {
	label: "SampleGRPC",
	id: "SampleGRPC-9c313f83-615e-4c68-ab50-1027c0c6ab26"
}
service "HelloWorld" on new grpc:Listener(9090) {

    remote function hello(string request) returns string {
        // Reads the request message and sends a response.
        return "Hello " + request;
    }
}
