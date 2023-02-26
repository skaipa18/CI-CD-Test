import { LightningElement } from 'lwc';
import pubsub from 'c/pubsub';
export default class Pubsubpublisher extends LightningElement {

    

    callevent(){
   
        let message = {"Name":"KVNS","Age":40,"Area":"Hyd"};

        pubsub.fireEvent('evtpubsub',message);



    }

}