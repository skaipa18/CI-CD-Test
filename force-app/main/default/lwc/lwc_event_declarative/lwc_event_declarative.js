import { LightningElement } from 'lwc';

export default class Lwc_event_declarative extends LightningElement {

    incrementButton(event){

        const v = new CustomEvent('evtincr',{detail:'Increment'}); // create the event
        this.dispatchEvent(v); // dispathing the event
    }

    decrementButton(event){

        const v = new CustomEvent('evtdecr',{detail:'Decrement'}); // create the event
        this.dispatchEvent(v); // dispathing the event
    }

}