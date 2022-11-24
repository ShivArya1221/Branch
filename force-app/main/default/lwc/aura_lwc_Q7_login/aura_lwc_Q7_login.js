import { LightningElement, track, wire } from 'lwc';
import main from '@salesforce/apex/aura_sheet_lwc_Q7.main';

export default class Aura_lwc_Q7_login extends LightningElement {
    @track username;
    @track userpassword;
    @track val;

    usernm(event){
        this.username=event.target.value;
    }

    userps(event){
        this.userpassword=event.target.value;
    }


    handler(){

        main({username:this.username, password:this.userpassword})
        .then((result)=>{
            this.val=result;

            if(this.val===1){
            
                window.alert("Log In Successfully");
            }else if(this.val===0){
                
                window.alert("Please Check User Name or Password");
            }
        });

       
    }
}


