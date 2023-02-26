import UserPreferencesShowFaxToExternalUsers from '@salesforce/schema/User.UserPreferencesShowFaxToExternalUsers';
import { LightningElement } from 'lwc';

export default class ArrayAndJSONVariables extends LightningElement {

    arrayvar=[1,2,3,4,5];
    arrayJSON =[
        {'name':'kvns','empID':100},
        {'name':'kskk','empID':110},
        {'name':'skaipa','empID':120}
    ];

}