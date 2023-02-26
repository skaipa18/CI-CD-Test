import { LightningElement ,wire} from 'lwc';

import {registerListener, unregisterAllListeners } from 'c/pubsub'

import {CurrentPageReference} from 'lightning/navigation';



export default class Lwc_pubsub_component extends LightningElement {

    pubsubevtmsg;

    @wire(CurrentPageReference) pageRef;

    connectedCallback(){
    registerListener('pubsubevent',this.setCaptureText,this);
    }
    setCaptureText(msg){
        this.pubsubevtmsg = msg;
    }
}