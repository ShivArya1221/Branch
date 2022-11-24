import { LightningElement,track } from 'lwc';

export default class TrackDemo extends LightningElement {
//     @track fullName={firstName:"",lastName:""};
//     handleinput(event){
//         const field=event.target.name;
//         if(field==='firstName'){
//             this.fullName.firstName=event.target.value;
//         }else  if(field==='lastName'){
//             this.fullName.lastName=event.target.value;
//     }
// }


 name={
    name:"Shivam",
    age:"12",
    phone:"12234536738"
};

handler(event){
    this.name.age=event.target.value;
    this.name={...this.name,"age":event.target.value}
}


}