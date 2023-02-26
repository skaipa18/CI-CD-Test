import { LightningElement,api, wire,track} from 'lwc';

import getaccountlist from '@salesforce/apex/lwc_getaccountlist.getAccountList';
import { updateRecord  } from 'lightning/uiRecordApi';
import {refreshApex} from '@salesforce/apex';

import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import PHONE_FIELD from '@salesforce/schema/Account.Phone';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import WEBSITE_FIELD from '@salesforce/schema/Account.Website';
import ID_FIELD from '@salesforce/schema/Account.Id';

import { getRecord } from 'lightning/uiRecordApi';

const actcol =[{label:'Account Name',fieldName:'Name',editable : true},
                {label:'Account Phone',fieldName:'Phone',editable : true},
                {label:'Account Website',fieldName:'Website',editable : true}
  
];

const FIELDS =['Opportunity.Name','Opportunity.Amount','Opportunity.StageName'];

export default class Lwc_ssc_wire_track_api_lds extends LightningElement {
    //recordid='0012v00002QIb32AAD';
    contactid='0032v00002pDYLSAA4';
    recid='0012v00002QIb32AAD';
    name;
    @api yourname = 'Kaipa Swarnakumar';
    acctobject = ACCOUNT_OBJECT;
    custfields = [NAME_FIELD,PHONE_FIELD,INDUSTRY_FIELD,WEBSITE_FIELD];
    // SSC Start
    @track col = actcol;
    @track draftValues;
    @wire(getaccountlist) account;

    // SSC End
   //Get Record Code
   @api recordid = '0062v00001UmEdYAAV';
   @wire(getRecord,{recordId : '$recordid' ,fields : FIELDS} ) Opportunity;
  
   get Name(){
       return this.Opportunity.data.fields.Name.value;
   }
   get Amount(){
       return this.Opportunity.data.fields.Amount.value;
   }
   get StageName(){
       return this.Opportunity.data.fields.StageName.value;
   }
    

   

    
    clear(event){
        const inputfields = this.template.querySelectorAll('lightning-input-field');
        inputfields.forEach(field => { field.value = "";
            
        });

    }
    handleSave(event){
        
        const fields = {};
        fields[ID_FIELD.fieldApiName] = event.detail.draftValues[0].Id;
        fields[NAME_FIELD.fieldApiName]=event.detail.draftValues[0].Name;
        fields[PHONE_FIELD.fieldApiName]=event.detail.draftValues[0].Phone;
        fields[WEBSITE_FIELD.fieldApiName]=event.detail.draftValues[0].Website;
        const recordfields = {fields};
    
         alert('Field Values captured '+fields);

        updateRecord(recordfields).then((
             )=>{alert('Record Saved Successfully');
            this.draftValues=[];//clear all data values
        return refreshApex(this.account);});

    }
}