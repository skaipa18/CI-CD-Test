import { LightningElement } from 'lwc';
import Accountlist from '@salesforce/apex/lwc_apex_to_get_accountlist.getAccountList';

export default class Lwc_ImperativelyCallApex extends LightningElement {
    acctlist;
    error;


handlekey(event){
const searchKey = event.target.value;

Accountlist({strAccountName:searchKey}).then(result=>{this.acctlist = result;
    this.error=undefined;}).catch( error=>{this.error = error;this.acctlist=undefined})

}
}