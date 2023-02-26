import { LightningElement ,wire} from 'lwc';
import { fireEvent } from 'c/pubsub';
import { CurrentPageReference } from 'lightning/navigation';

export default class Lwc_pubsub_publisher extends LightningElement {
    
    @wire(CurrentPageReference) pageRef;

    
    publishevent(event){
    //let inputname = event.target.value;
    let inputname = this.template.querySelector("lightning-input[data-my-id=inputval]").value;
    let payload = {pubsubname : inputname};
    fireEvent(this.pageRef, "evtpubsub", payload);
   
    }
    

    

    
}