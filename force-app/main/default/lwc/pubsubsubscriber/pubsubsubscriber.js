import { LightningElement, wire } from 'lwc';
import pubsub from 'c/pubsub';
import { CurrentPageReference } from 'lightning/navigation';

export default class Pubsubsubscriber extends LightningElement {

message;
@wire(CurrentPageReference) pageRef;
connectedCallback(){

    
    this.evtregister();
}

evtregister(){


    pubsub.registerListener('evtpubsub',this.handleEvent,this.pageRef);
    
}
handleEvent(){
   
    this.message = messageFromEvt ? JSON.stringify(messageFromEvt , null , '\t') : 'no message';
}

}