import ballerina/graphql;

type PaymentEntry record{|
    string id;
    decimal amount;
    string owner;
    string currency;
|};

@display {
	label: "PaymentService",
	id: "PaymentService-a6bf7559-a755-4b66-8508-27ca13ebcefc"
}
service / on new graphql:Listener(9090) {

    // A resource method with `get` accessor inside a `graphql:Service` represents a field in the
    // root `Query` type.
    resource function get greeting() returns string {
        return "Hello, World";
    }
}
