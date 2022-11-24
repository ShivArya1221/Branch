import { LightningElement, track , api,wire } from 'lwc';
import DisplaystripeAccount from'@salesforce/apex/createAccountThroughStripWithPostman.DisplaystripeAccount';
import checkStripeAccount from'@salesforce/apex/createAccountThroughStripWithPostman.checkStripeAccount';
import createStripeAccount from'@salesforce/apex/createAccountThroughStripWithPostman.createStripeAccount';
import { getRecord } from 'lightning/uiRecordApi';



export default class StripeActionComponent extends LightningElement {


@api recordId;
@track customerId;
@track customername;
@track customerphone;
@api objectApiName;
@track goStripeID=false;
@track updateStripeField=true;





@wire(checkStripeAccount,{accId:'$recordId'})
getData ({data}) {
if(data){
   if(data==false){
    this.goStripeID=false;

   }
   else{
    this.goStripeID=true;
    
    DisplaystripeAccount({ids:this.recordId}).then(res=>{
        if(res[1]==undefined){
            this.goStripeID=false;
        }
        else{
        this.customerId=res[0];
        this.customername=res[1];
        this.customerphone=res[2];
        }
    });
   }
}
}

stripeHandler(){
    createStripeAccount({ids:this.recordId}).then((res)=>{
        this.goStripeID=true;
        this.customerId=res[0];
        this.customername=res[1];
        this.customerphone=res[2];

    }).then(()=>{
setTimeout(() => {
    eval("$A.get('e.force:refreshView').fire()");
}, 1000);
    });

}

refershRecordPage(){
    getRecord(this.recordId);
}


} 
