import { LightningElement ,wire} from 'lwc';
import Accountlist from '@salesforce/apex/lwc_apex_to_get_accountlist.getAccountList';
export default class Lwc_Wire_With_Function extends LightningElement {

    strActName;
    accountlist;

    @wire(Accountlist,{strAccountName:'$strActName'}) wiredAccount({data,error}){

        if(data){
           this.accountlist = data;
           this.error=undefined;
        }
        else{
            this.error = error;
            this.accountlist = undefined;
        }
    }

    handlekey(event){
     this.strActName = event.target.value;
    }
}