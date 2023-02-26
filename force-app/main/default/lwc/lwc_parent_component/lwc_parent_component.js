import { LightningElement ,wire} from 'lwc';

import {fireEvent} from 'c/pubsub';

import { CurrentPageReference } from 'lightning/navigation';

export default class Lwc_parent_component extends LightningElement {
    strText;
    evtmsg1;
    evtmsg2;
    pcvalue = 'Parent To Child Message @@';
    
    @wire(CurrentPageReference) objpageReference;
    
    handlResponse(event){      
    this.evtmsg1 = event.detail.first;
    this.evtmsg2 = event.detail.second;
    }

    changeName(event){
    this.strText = event.target.value;
    }
    publishEvent(event){
        //firEvent(this.pageReference , eventname , data)
        fireEvent(this.objpageReference,'pubsubevent',this.strText);

    }
}