import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "Sample HelloWorld",
	id: "Sample HelloWorld-7d1f77e9-2442-4606-a5de-7e431316597f"
}
service / on new http:Listener(9090) {

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
