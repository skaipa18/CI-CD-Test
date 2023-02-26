import { LightningElement, wire ,track,api} from 'lwc';
import {getFieldValue, getRecord} from 'lightning/uiRecordApi';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';

import {createRecord} from 'lightning/uiRecordApi';
import getActListImperative from '@salesforce/apex/lwc_apex_getAccountList.getAccountListImperative';

import getActListWire from '@salesforce/apex/lwc_apex_getAccountList.getAccountListWire';

import NAME_FIELD from '@salesforce/schema/Account.Name';
import OWNER_NAME_FIELD from '@salesforce/schema/Account.Owner.Name';


export default class Lwc_getaccount_lds extends LightningElement {
    showdata;
    strName='KVNS';
    @api recordid;
    error;
    inputvalue;
    acctdata;
    evtmsg = 'This detail is coming from child Component!';
    @api getValueFromParent;

       
//@wire(createRecord,{"apiName":"Account","fields":{"Name":"VSC Customer","Rating":"Hot"}}) acctRecCreation;

@wire(getRecord,{recordId: '$recordid',fields:[NAME_FIELD,OWNER_NAME_FIELD]}) actdata({data,error}){
    if(data){
        console.log('Data is there');
        this.showdata = data;
        this.dispatchEvent(new ShowToastEvent({title : 'Test Toast Message',message : 'Succefully executed',variant :'success'}));
    }
};

@wire(getActListWire,{strname : '$strName'}) wiredAcctList;

get name(){
    return getFieldValue(this.showdata,NAME_FIELD);
}
get owner(){
    return getFieldValue(this.showdata,OWNER_NAME_FIELD);
}
callme(event){
    this.strName = event.target.value;
}



showAcctList(){

    getActListImperative({strname : this.strName}).then(results =>{
        this.acctdata = results;
        console.log('showAccount Success ');
    }).catch(error =>{
        console.log('showAccount Error '+error);
    });

    let fields = {'Name':'VSC Account Name1','Rating' : 'Hot'};
    let objectRecord = {'apiName' : 'Account',fields};
    createRecord(objectRecord).then(results=>{console.log('createRecord Success')}).catch(error=>{console.log('createRecordFailure')});

}

callEvent(event){
const evtname = new CustomEvent('evtcp',{detail: {first:"first",second:"second"}});
this.dispatchEvent(evtname);
console.log('in callEvent child JS Function');
}

}