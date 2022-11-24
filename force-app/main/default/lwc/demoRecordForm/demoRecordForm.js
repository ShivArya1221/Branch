import { LightningElement, track } from 'lwc';
import contactFields from '@salesforce/schema/contact';
import LastName from '@salesforce/schema/Contact.LastName';
import Email from '@salesforce/schema/Contact.Email';
import AccountId from '@salesforce/schema/Contact.AccountId';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';




export default class DemoRecordForm extends LightningElement {

    @track contactRecord=contactFields;
    @track fields=['FirstName', LastName,'Phone', Email,AccountId];

    message (){
        const evt = new ShowToastEvent({
            title: "Success!",
            message: "The Contact's record has been successfully saved.",
            variant: "success",
        });
        this.dispatchEvent(evt);
    }
   
}