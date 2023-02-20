import ballerina/graphql;

@display {
	label: "SampleGQL2",
	id: "SampleGQL2-5ca277a3-cccb-47cb-bd17-28aa7b31e2bd"
}
service / on new graphql:Listener(9090) {

    // A resource method with `get` accessor inside a `graphql:Service` represents a field in the
    // root `Query` type.
    resource function get greeting() returns string {
        return "Hello, World";
    }
}
