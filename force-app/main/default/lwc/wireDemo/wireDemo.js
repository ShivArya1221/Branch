import { LightningElement,wire,track } from 'lwc';
import getcontact from '@salesforce/apex/wireDemo.getcontact';

     const columns=[{label:'Contact Id', fieldName:'Id'},
        {label:'Contact Name', fieldName:'Name'}
                  
    ];
export default class WireDemo extends LightningElement {
    @track columns=columns;
    @track data=[];
    @wire(getcontact)
    employee({data,error}){
        if(data){
            this.data=data;
        }else if(error){
            console.log('error lele');
        }
    }
}