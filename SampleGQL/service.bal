import ballerina/graphql;

@display {
	label: "SampleGQL",
	id: "SampleGQL-0c3e79c7-fb42-4f98-9693-a4febe1cb0d4"
}
service / on new graphql:Listener(9090) {

    // A resource method with `get` accessor inside a `graphql:Service` represents a field in the
    // root `Query` type.
    resource function get greeting() returns string {
        return "Hello, World";
    }
}
