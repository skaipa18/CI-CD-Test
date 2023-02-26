import { LightningElement } from 'lwc';

export default class Lwc_ex2_if_else extends LightningElement {

    responseboolean = true;
    lname;
    lage;
    lplace;

    fname(event){
        this.lname = event.target.value;

    }
    fage(event){
        this.lage = event.target.value;
    }
    fplace(event){
        this.iplace = event.target.value;
    }
    collectdata(event){

        this.responseboolean = false;
    }
    clearAll(event){
        this.responseboolean = true;
    }
}