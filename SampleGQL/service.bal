import ballerina/graphql;

@display {
	label: "SampleGQL",
	id: "SampleGQL-c4891bfd-20b1-4deb-9943-39c621d74330"
}
service / on new graphql:Listener(9090) {

    // A resource method with `get` accessor inside a `graphql:Service` represents a field in the
    // root `Query` type.
    resource function get greeting() returns string {
        return "Hello, World";
    }
}
