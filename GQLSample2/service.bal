import ballerina/graphql;

@display {
	label: "GQLSample2",
	id: "GQLSample2-9bc0ae23-ae7e-4c71-9371-a946b7beed13"
}
service / on new graphql:Listener(9090) {

    // A resource method with `get` accessor inside a `graphql:Service` represents a field in the
    // root `Query` type.
    resource function get greeting() returns string {
        return "Hello, World";
    }
}
