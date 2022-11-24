import { LightningElement,track,wire } from 'lwc';
// import CONTACT_OBJECT from '@salesforce/schema/Contact';
// import ACCOUNTID_FIELD from '@salesforce/schema/Contact.AccountId';
// import NAME_FIELD from '@salesforce/schema/Contact.LastName';
// import EMAIL_FIELD from '@salesforce/schema/Contact.Email';
// import PHONE_FIELD from '@salesforce/schema/Contact.Phone';

import fetchAcc from '@salesforce/apex/Aura_sheet_Q2_cls.fetchAcc';
import fetchCon from '@salesforce/apex/Aura_sheet_Q2_cls.fetchCon';
 
const columns = [{
    label: 'First Name',
    fieldName: 'FirstName'
},
{
    label: 'Last Name',
    fieldName: 'LastName'
},
{
    label: 'Email',
    fieldName: 'Email',
    type: 'email'
},
{
    label: 'Phone',
    fieldName: 'phone',
    type: 'phone'
}

];

export default class Aura_Sheet_Lwc_2 extends LightningElement {
    // contactObject = CONTACT_OBJECT;
    // myFields = [ACCOUNTID_FIELD, NAME_FIELD,EMAIL_FIELD,PHONE_FIELD];

    

    // handleContactCreated(){
    //     window.alert("Contact Created");
    //     setTimeout(() => {
    //       //  window.location.reload();    
    //         eval("$A.get('e.force:refreshView').fire()");
    //     }, 2000);
    // }


    @track accountId = '';
    @track contacts;
    @track columns = columns;
   
    @wire(fetchAcc) accounts;
    onValueSelection(event) {
        
        const selectedAccount = event.target.value;
        this.accountId = event.target.value;
        if (selectedAccount != null) {
            fetchCon({
                    accountId: selectedAccount
                })
                .then(result => {
                    this.contacts = result;
                 
                    console.log('result' + JSON.stringify(result) + selectedAccount);
                })
                .catch(error => {
                    this.error = error;
                });
        }
    }

}