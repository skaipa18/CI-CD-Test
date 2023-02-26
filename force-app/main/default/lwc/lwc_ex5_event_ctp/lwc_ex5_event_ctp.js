import { LightningElement } from 'lwc';

export default class Lwc_ex5_event_ctp extends LightningElement {

    lmsg = 'Message From Child To Parent !!!';
    
    ctpevent(event){
    

    const evt = new CustomEvent('evtctp',{detail : this.lmsg});

    this.dispatchEvent(evt);

    }
}