import { LightningElement, wire} from 'lwc';

import Accountlist from '@salesforce/apex/lwc_apex_to_get_accountlist.getAccountList';

export default class Lwc_Wire_With_Property extends LightningElement {
  
    strActName = 'KVNS';
    
    @wire(Accountlist,{strAccountName:'$strActName'}) acctlist;
}