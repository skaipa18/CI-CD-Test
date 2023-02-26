import { LightningElement } from 'lwc';

export default class Lwc_event_child_component extends LightningElement {
    evtval;
    constructor(){
        alert('Inside Constructo !!');
        super();    
        alert('Inside Constructo after Super!!');                    
        this.template.addEventListener("evtptoc1",this.handleevnt);
        alert('Inside Constructo after Listener!!');
    }
    
    handleevnt(event){
     
        let name = event.detail;
        alert('Called Child Component & detail Value Is  ',name);
        this.evtval = name;
    }
}