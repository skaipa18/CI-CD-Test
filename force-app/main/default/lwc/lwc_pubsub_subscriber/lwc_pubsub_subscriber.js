import { LightningElement ,wire} from 'lwc';
import { registerListener, unregisterListener,unregisterAllListeners,fireEvent } from 'c/pubsub';
import { CurrentPageReference } from 'lightning/navigation';


export default class Lwc_pubsub_subscriber extends LightningElement {
  
@wire(CurrentPageReference) pageRef;

connectedCallback(){

registerListener("evtpubsub",this.handleevent,this);

}

handleevent(payload){
alert('Inside subscriber !!!!!!!!')
let inputname = payload.pubsubname;
alert('Event Called From Publisher and Subscribed  & Value is  =>> '+inputname);

}

}