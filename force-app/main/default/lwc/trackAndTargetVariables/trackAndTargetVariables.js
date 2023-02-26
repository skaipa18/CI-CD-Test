import { LightningElement, track } from 'lwc';

export default class TrackAndTargetVariables extends LightningElement {

    @track resvalue;
    num1;
    num2;
    change(event){
    const ename = event.target.name;
    if(ename == 'fval'){
    this.num1 = event.target.value;
    }else{
    this.num2 = event.target.value;
    }
    }
    add(){
        const a = parseInt(this.num1);
        const b = parseInt(this.num2);
        this.resvalue = a+b;  
    }
    sub(){
        const a = parseInt(this.num1);
        const b = parseInt(this.num2);
        this.resvalue = a-b;
    }
    mul(){
        const a = parseInt(this.num1);
        const b = parseInt(this.num2);
        this.resvalue = a*b;
    }
}