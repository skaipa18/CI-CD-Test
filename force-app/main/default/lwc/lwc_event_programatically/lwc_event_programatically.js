import { LightningElement } from 'lwc';

export default class Lwc_event_programatically extends LightningElement {

    callme(){

        const v = new CustomEvent('evtprogram',{detail:'KVNS',bubbles:true,composed:true});
        this.dispatchEvent(v);
    }

}