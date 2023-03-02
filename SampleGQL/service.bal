import ballerina/graphql;

@display {
	label: "SampleGQL",
	id: "SampleGQL-6c251bcb-70ce-4689-9ff0-8aa0c8ee85ad"
}
service / on new graphql:Listener(9090) {

    // A resource method with `get` accessor inside a `graphql:Service` represents a field in the
    // root `Query` type.
    resource function get greeting() returns string {
        return "Hello, World";
    }
}
