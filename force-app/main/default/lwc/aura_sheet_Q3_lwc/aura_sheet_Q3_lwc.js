import { LightningElement,api } from 'lwc';
import changedt from '@salesforce/apex/Aura_sheet_Q3_cls.changedt';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';

export default class Aura_sheet_Q3_lwc extends LightningElement {



@api recordId;
closedDate;

opdate(event){
    this.closedDate=event.target.value;
}

   
 

//@wire(changedt,{opid:this.recordId, closedDate:this.oppdate})ff;
handler(){
    changedt({opid:this.recordId, oppdate:this.closedDate})
    .then((result)=>{
        const toastShow=new ShowToastEvent({
            title: 'Date Updated',
             massage:'Successful',
             variant:'success'
         }); 
   this.dispatchEvent(toastShow);

  
    })
    .catch((error)=>{
        console.log("error")
    });
    
    setTimeout(() => {
        eval("$A.get('e.force:refreshView').fire()");  
    
    }, 3000);
   
}


   


}

    
