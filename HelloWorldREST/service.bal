import ballerina/graphql;
import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
    label: "HelloWorldREST",
    id: "HelloWorldREST-66ba7555-1089-4964-8dc7-2dcac0c3bb81"
}
service / on new http:Listener(9090) {

    @display {
        label: "FooInternalGQL",
        id: "FooInternalGQL-341c4fad-9fd1-49aa-8fa3-9d4ea7bd49e3"
    }
    graphql:Client Foointernalgql;

    function init() returns error? {
        self.Foointernalgql = check new ("");
    }

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
