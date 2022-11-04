import ballerinax/trigger.github;
import ballerina/http;

configurable github:ListenerConfig config = ?;

listener http:Listener httpListener = new(8090);
listener github:Listener webhookListener =  new(config,httpListener);

service github:LabelService on webhookListener {
  
    remote function onCreated(github:LabelEvent payload ) returns error? {
      //Not Implemented
    }
    remote function onEdited(github:LabelEvent payload ) returns error? {
      //Not Implemented
    }
    remote function onDeleted(github:LabelEvent payload ) returns error? {
      //Not Implemented
    }
}

service /ignore on httpListener {}