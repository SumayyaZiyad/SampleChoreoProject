import ballerina/graphql;
import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
    label: "FooService",
    id: "FooService-5551bb10-30be-411b-917b-857df3f7f902"
}
service / on new http:Listener(9090) {
    @display {
        label: "SampleGQL",
        id: "SampleGQL-5341dc90-bdb7-4647-ab1c-b080c2134d2a"
    }
    graphql:Client sampleGqlClient;

    function init() returns error? {
        self.sampleGqlClient = check new ("");

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
