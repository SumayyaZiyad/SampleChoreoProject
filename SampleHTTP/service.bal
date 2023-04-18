import ballerina/graphql;
import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
    label: "SampleHTTP",
    id: "SampleHTTP-e5efd9ab-6cc5-43a6-8a71-46debbf8a9eb"
}
service / on new http:Listener(9090) {

    @display {
        label: "SampleGQL",
        id: "SampleGQL-65423494-a84c-488e-bb73-ee68d8ac7713"
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
