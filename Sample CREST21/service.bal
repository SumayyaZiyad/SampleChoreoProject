import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "Sample CREST21",
	id: "Sample CREST21-8aa80150-8e77-4cb2-b96c-f14c48fc579f"
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
