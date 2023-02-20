import ballerina/graphql;

@display {
	label: "TestXGQLComponent",
	id: "TestXGQLComponent-550da519-a0f8-4f14-bd5c-6caa99337f52"
}
service / on new graphql:Listener(9090) {

    // A resource method with `get` accessor inside a `graphql:Service` represents a field in the
    // root `Query` type.
    resource function get greeting() returns string {
        return "Hello, World";
    }
}
