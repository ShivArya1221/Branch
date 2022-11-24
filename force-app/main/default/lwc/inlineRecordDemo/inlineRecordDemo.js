import { LightningElement, track, wire} from 'lwc';
import accfun from '@salesforce/apex/inlineRecordDemo.accfun';

const columns = [
    {label:'Id', fieldName: 'Id', editable:true},
    { label: 'Name', fieldName: 'Name', editable: true },
    { label: 'Website', fieldName: 'Website', type: 'url', editable: true },
    { label: 'Phone', fieldName: 'Phone', type: 'phone', editable: true },
    
    
];

export default class InlineRecordDemo extends LightningElement {
   @track data = [];
   
    columns = columns;
    @wire(accfun) accmethod;
     
      
    
    

    
     

}