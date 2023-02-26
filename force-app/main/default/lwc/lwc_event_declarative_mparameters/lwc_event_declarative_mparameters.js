import { LightningElement ,api} from 'lwc';

export default class Lwc_event_declarative_mparameters extends LightningElement {
    @api fname;
    @api lname;
    @api email;


    efname(event){
        this.fname = event.target.value;
    }
    elname(event){
        this.lname = event.target.value;
    }
    eemail(event){
        this.email = event.target.value;
    }

    submit(event){
    
        const val = new CustomEvent('evtcontactinput',{detail:{FirstName:this.fname,LastName:this.lname,Email:this.email}});
        this.dispatchEvent(val);

    }
}