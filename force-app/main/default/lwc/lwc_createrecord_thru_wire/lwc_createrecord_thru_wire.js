import { LightningElement ,track, wire} from 'lwc';
import { createRecord } from 'lightning/uiRecordApi';


export default class Lwc_createrecord_thru_wire extends LightningElement {
   
    @track fname;
    @track lname;
    
   // lfields = {'FiratName':'$fname','LastName':'$lname'};
    recorddata = {'apiName':'Contact','fields':{'FiratName':'$fname','LastName':'$lname'}}; 
  //  @wire(createRecord,{recorddata}) results;
    fname(event){
        this.fname = event.target.value;
    }
    lanme(event){
        this.lname = event.target.value;
    }
    
}