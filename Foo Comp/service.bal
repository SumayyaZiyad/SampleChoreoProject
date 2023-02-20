import ballerina/graphql;

@display {
	label: "Foo Comp",
	id: "Foo Comp-22746ce6-5cc0-4e37-a9e9-d57713610b18"
}
service / on new graphql:Listener(9090) {

    // A resource method with `get` accessor inside a `graphql:Service` represents a field in the
    // root `Query` type.
    resource function get greeting() returns string {
        return "Hello, World";
    }
}
