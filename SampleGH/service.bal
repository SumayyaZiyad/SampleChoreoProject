import ballerinax/trigger.asgardeo;

configurable asgardeo:ListenerConfig config = ?;

listener asgardeo:Listener webhookListener = new (config);

@display {
    label: "RegistrationService",
    id: "RegistrationService"
}
service asgardeo:RegistrationService on webhookListener {
    remote function onAddUser(asgardeo:AddUserEvent event) returns error? {
        // Not Implemented
    }
    remote function onConfirmSelfSignup(asgardeo:GenericEvent event) returns error? {
        // Not Implemented
    }
    remote function onAcceptUserInvite(asgardeo:GenericEvent event) returns error? {
        // Not Implemented
    }
}

@display {
    label: "LoginService",
    id: "LoginService"
}
service asgardeo:LoginService on webhookListener {
    remote function onLoginSuccess(asgardeo:LoginSuccessEvent event) returns error? {
        // Not Implemented
    }
}

