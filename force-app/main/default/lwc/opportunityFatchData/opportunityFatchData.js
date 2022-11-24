import { LightningElement, wire, track, api } from 'lwc';
import getData from '@salesforce/apex/opportunityController.getData';
import getStage from '@salesforce/apex/opportunityController.getStage';
import StageList from '@salesforce/apex/opportunityController.StageList';
import deleteRecord from '@salesforce/apex/opportunityController.deleteRecord';
import changeStage from '@salesforce/apex/opportunityController.changeStage';





// const columns=[
//     { label: 'Id', fieldName: 'Id'},
//     { label: 'Name',  fieldName: 'Name'},
//     { label: 'Stage Name',  fieldName: 'Stagename'},
//     { label: 'Account Name',  fieldName: 'AccountId'},
//     { label: 'Close Date',  fieldName: 'closedate'}];

export default class OpportunityFatchData extends LightningElement {
  
    @track data=[];
    @track options=[];
    @track newStageOption=[];
    @track buttonClick=false;
    @track recordId;
    @track editrecord=false;
    @track editStage=false;
    @track allStages=[];
    @track allValue=false;
    @track viewRecord=false;
    @track newstage;
    connectedCallback(){
    this.alldatamethod();
   }
   @api isLoaded = false;
    // change isLoaded to the opposite of its current value
    //    handleClick() {
    //        this.isLoaded = !this.isLoaded;
    //    }

   
@track placevalue;

editChange(event) {
    // this.placevalue='';
    try{
        console.log(' inside in onselect');
    let val = event.detail.value;
    this.recordId = event.target.name;
console.log("value >"+ val);
console.log("recordId >"+ this.recordId);
    if(val=="Edit"){
        this.isLoaded = true;
        this.editrecord=true;
        this.isLoaded=false;
       

    }
    

    if(val=="View"){
      
       this.viewRecord=true;
           
    }
   
    if(val=="ChangeStage"){
        
         this.editStage=true;   
     }
    
    if(val=="Delete"){
       deleteRecord({recId:this.recordId}).then((result)=>{
        
        setInterval(() => {
            window.location.reload();
        }, 500);
        window.alert("Data Deleted");
        
        });
       
    }
   

}catch(error){
        console.log("Errror"+ error);
    }
}
        @wire(StageList)

        getobject({data, error}){
            if(data){
                this.options=data;  
                
                let alloptions=[];
                this.options.forEach(all=>{
                alloptions.push(
                    { value:all, label:all}
                    ); 
                });
                this.newStageOption= JSON.parse(JSON.stringify(alloptions));

            }else if(error){
              console.log("Error");
            }
        }

        showOptons(){
           this.buttonClick=true;
           this.allStages=[];
        }

       alldatamethod(){
        getData().then((result)=>{

            this.data=result;

        });
       }

       stageChange(event){
this.newstage=event.detail.value;
       }

       checkboxchange(event){
        let stagename=event.target.label;

if(stagename=="All Record"){
    this.allStages=[];
    this.allValue=true;
    if(event.target.checked){
        this.options.forEach(stage=>{
            this.allStages.push(stage);
        });
        console.log("All Stage=>" + this.allStages)
    }
    else{
   this.allValue=false;
        this.options.forEach(stage=>{
            this.allStages=this.allStages.filter(item=>item!=stage);
        });
        console.log("All Stage=>" + this.allStages)
    
}
}
else
{
        if(event.target.checked){
        this.allStages.push(stagename);
        console.log("All selected stages > "+this.allStages);
       }else{
        this.allStages=this.allStages.filter(val=>val!=stagename);
        console.log("All selected stages >"+this.allStages);
       }
    }}
       
    okHandler(){
        this.buttonClick=false;

        getStage({stagevalue:this.allStages}).then((result)=>{

            this.data=result;

        });

    }

    cancelHandler(){
        this.buttonClick=false;
        this.viewRecord=false;
    }

    onsave(){
       this.editrecord=false; 
       setTimeout(() => {
window.location.reload();
    }, 500);
    }

    oncancel(){
        this.editrecord=false; 
        this.viewRecord=false;
        this.editStage=false;

    }
onok(){
    this.editStage=false;
    changeStage({stageId:this.recordId, stage:this.newstage}).then((result)=>{
        
       if(result=='false'){
            console.log(result);
            alert("Same result stage");
       }
        else{ 
            alert("Updated")}
        });
}

    

}