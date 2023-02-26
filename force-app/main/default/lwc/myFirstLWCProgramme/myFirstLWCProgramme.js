import { LightningElement } from 'lwc';

export default class MyFirstLWCProgramme extends LightningElement {
    name = 'Kaipa Venkata Naga Swarna Kumar';
    callme(){
        this.name = 'KVNS KUMAR';
    }
}