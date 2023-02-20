import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "FooExternalREST",
	id: "FooExternalREST-e40413a2-0718-4ee2-a6c1-b223efc1c45d"
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
