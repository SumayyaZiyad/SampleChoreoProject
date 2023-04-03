import ballerina/graphql;

@display {
	label: "SampleGQLX",
	id: "SampleGQLX-485219a1-d702-42f8-bf73-e3ae7944223b"
}
service / on new graphql:Listener(9090) {

    // A resource method with `get` accessor inside a `graphql:Service` represents a field in the
    // root `Query` type.
    resource function get greeting() returns string {
        return "Hello, World";
    }
}
