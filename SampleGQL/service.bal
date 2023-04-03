import ballerina/graphql;

@display {
	label: "SampleGQL",
	id: "SampleGQL-e6662a86-171f-436d-b2a7-a72ec44fbe40"
}
service / on new graphql:Listener(9090) {

    // A resource method with `get` accessor inside a `graphql:Service` represents a field in the
    // root `Query` type.
    resource function get greeting() returns string {
        return "Hello, World";
    }
}
