import ballerina/graphql;

@display {
	label: "SampleGQL",
	id: "SampleGQL-da04333d-99e1-4974-84a8-c88850bad2f5"
}
service / on new graphql:Listener(9090) {

    // A resource method with `get` accessor inside a `graphql:Service` represents a field in the
    // root `Query` type.
    resource function get greeting() returns string {
        return "Hello, World";
    }
}
