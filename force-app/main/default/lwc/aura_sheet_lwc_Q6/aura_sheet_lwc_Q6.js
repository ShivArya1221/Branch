import { LightningElement,track, wire } from 'lwc';
import fatchdata from '@salesforce/apex/Aura_sheet_Q7_cls.fatchdata';

const columns=[{
    label: 'Id',
    fieldName: 'Id'
},
{
    label: 'Name',
    fieldName: 'Name'
},
{
    label: 'Phone',
    fieldName: 'Phone'
}];
 

export default class Aura_sheet_lwc_Q6 extends LightningElement {
    @track data=[];
    @track columns=columns;
    
    @wire(fatchdata)
        accData({data, error}){
            if(data){
                this.data=data;
            }else if(error){
              console.log(error);
            }
        }
    

}