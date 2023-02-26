import { LightningElement } from 'lwc';

export default class Lwc_event_parent_component extends LightningElement {
    
    handleEvent(event){
    const evtname = new CustomEvent("evtptoc1",{detail:'KVNS',bubbles:true,composed:true});
    this.dispatchEvent(evtname);
    }
}