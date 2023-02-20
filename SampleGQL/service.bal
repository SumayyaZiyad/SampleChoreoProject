import ballerina/graphql;

@display {
	label: "SampleGQL",
	id: "SampleGQL-c80fe225-531e-49d3-98b2-19c54cac4bd7"
}
service / on new graphql:Listener(9090) {

    // A resource method with `get` accessor inside a `graphql:Service` represents a field in the
    // root `Query` type.
    resource function get greeting() returns string {
        return "Hello, World";
    }
}
