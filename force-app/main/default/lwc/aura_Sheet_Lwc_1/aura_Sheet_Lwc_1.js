import { LightningElement } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import WEBSITE_FIELD from '@salesforce/schema/Account.Website';
import PHONE_FIELD from '@salesforce/schema/Account.Phone';
import INDUSRTY_FIELD from '@salesforce/schema/Account.Industry';




export default class Aura_Sheet_Lwc_1 extends LightningElement {

    accountObject = ACCOUNT_OBJECT;
    myFields = [NAME_FIELD, WEBSITE_FIELD,PHONE_FIELD,INDUSRTY_FIELD];

    handleAccountCreated(){
        window.alert("Account Created");
        setTimeout(() => {
          //  window.location.reload();    
            eval("$A.get('e.force:refreshView').fire()");
        }, 2000);
    }

    
}