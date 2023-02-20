import ballerina/graphql;

@display {
	label: "FooInternalGQL",
	id: "FooInternalGQL-341c4fad-9fd1-49aa-8fa3-9d4ea7bd49e3"
}
service / on new graphql:Listener(9090) {

    // A resource method with `get` accessor inside a `graphql:Service` represents a field in the
    // root `Query` type.
    resource function get greeting() returns string {
        return "Hello, World";
    }
}
