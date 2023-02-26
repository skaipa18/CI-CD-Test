import { LightningElement } from 'lwc';

import customlabel1 from '@salesforce/label/c.LWCCustLabel1';
import customlabel2 from '@salesforce/label/c.LWCCustLabel2';
import customlabel3 from '@salesforce/label/c.LWCCustLabel3';

import lwcimg from '@salesforce/resourceUrl/lwctestlogo';
export default class Lwc_ex4_few_imports extends LightningElement {
    img1;
custlabellist = {customlabel1,customlabel2,customlabel3};

showcustomlabel(){

    this.img1 = lwcimg;
}
}