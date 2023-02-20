import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "Hello World",
	id: "Hello World-061a925e-1029-49f3-814e-cc225d3f674d"
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
