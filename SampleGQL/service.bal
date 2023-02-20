import ballerina/graphql;

@display {
	label: "SampleGQL",
	id: "SampleGQL-766b026d-c790-43b5-8cea-e33ef74310d1"
}
service / on new graphql:Listener(9090) {

    // A resource method with `get` accessor inside a `graphql:Service` represents a field in the
    // root `Query` type.
    resource function get greeting() returns string {
        return "Hello, World";
    }
}
