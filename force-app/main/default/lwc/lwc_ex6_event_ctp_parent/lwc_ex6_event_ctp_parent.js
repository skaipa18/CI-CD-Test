import { LightningElement } from 'lwc';

export default class Lwc_ex6_event_ctp_parent extends LightningElement {

    evtmsg;

    evthandle(event){

        alert('Inside Parent Event handler function =>> ',event.detail);
        this.evtmsg = event.detail;
    }
}