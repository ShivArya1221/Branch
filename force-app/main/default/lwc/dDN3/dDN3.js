import { LightningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platfromShowToastEvent';
import UserPreferencesShowStateToGuestUsers from '@salesforce/schema/User.UserPreferencesShowStateToGuestUsers';
export default class DDN3 extends LightningElement {
    // myTitle='DDN Toast......'
    // handlerClick(){
    //     this.showToast(this.myTitle);
    // }
    
    // showToast(myArument) {
    //     const Event=new showToastEvent({
    //      title: myTitle,
    //         message: 'want ti display toast',
    //         variant:'success'
    //     });
    //     this.dispatchEvent(Event);

    myTitle="First Toast message";

HandleClick(){
this.showNotification(this.myTitle);
}
showNotification(abc) {
    

    const evt = new ShowToastEvent({
        title : this.myTitle,
        message : 'Sample Message',
        variant : 'success'
    });
    this.dispatchEvent(evt);

  
    }
}