import { LightningElement } from 'lwc';
import CONTACT_OBJECT from '@salesforce/schema/Contact';


import EMAIL_FIELD from '@salesforce/schema/Contact.Email';
import PHONE_FIELD from '@salesforce/schema/Contact.Phone';
import NAME_FIELD from '@salesforce/schema/Contact.Name';
import PASS_FIELD from '@salesforce/schema/Contact.Password__c';
import USER_FIELD from '@salesforce/schema/Contact.UserName__c';

//import NAME_FIELD from '@salesforce/schema/Contact.FirstName';


export default class Aura_sheet_lwc_Q7 extends LightningElement {

    

    contactObject = CONTACT_OBJECT;
    myFields = [NAME_FIELD, EMAIL_FIELD,PHONE_FIELD,USER_FIELD,PASS_FIELD];




    handleContactCreated(){
        window.alert("Contact Created");
        setTimeout(() => {
          //  window.location.reload();    
            eval("$A.get('e.force:refreshView').fire()");
        }, 5000);
    }
}