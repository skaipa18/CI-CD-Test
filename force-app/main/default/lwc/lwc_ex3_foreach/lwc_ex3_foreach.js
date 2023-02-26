import { LightningElement } from 'lwc';

export default class Lwc_ex3_foreach extends LightningElement {
    
    showvalue;
    listdata = [{id:1,name:'KVNS',age:30,place:'Hyd'},
    {id:2,name:'KSK',age:35,place:'Bgr'},
    {id:3,name:'SKAIPA',age:40,place:'Pune'}];

    show(){
  this.showvalue = 'This is the value coming after button clicked.'
    }

}