import ballerina/graphql;

@display {
	label: "SampleGQL",
	id: "SampleGQL-9328162e-9a1d-4c9e-a5a4-570d67c41c9c"
}
service / on new graphql:Listener(9090) {

    // A resource method with `get` accessor inside a `graphql:Service` represents a field in the
    // root `Query` type.
    resource function get greeting() returns string {
        return "Hello, World";
    }
}
