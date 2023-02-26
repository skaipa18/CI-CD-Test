import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
export default class Lwc_misllenous_features extends LightningElement {
    showToastMsg(){
        alert('Inside Button Called!!');
        const evt = new ShowToastEvent({
            title: 'ShowToast',
            message: 'ShowToastMsg',
            variant: 'error'
        });
        this.dispatchEvent(evt);
        alert('After Dispatch Event');
    }

}