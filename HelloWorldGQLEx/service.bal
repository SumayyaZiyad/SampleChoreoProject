import ballerina/graphql;

@display {
	label: "HelloWorldGQLEx",
	id: "HelloWorldGQLEx-4d986c8f-c9b9-4d65-90d9-0c5afe6b8272"
}
service / on new graphql:Listener(9090) {

    // A resource method with `get` accessor inside a `graphql:Service` represents a field in the
    // root `Query` type.
    resource function get greeting() returns string {
        return "Hello, World";
    }
}
