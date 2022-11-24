import { LightningElement, track, wire,api } from 'lwc';
import beer from '@salesforce/resourceUrl/beer';
import beerlist from '@salesforce/apex/beerShopcls.beerlist';
import main from '@salesforce/apex/beerShopcls.main';
import deleteBeermain from '@salesforce/apex/beerShopcls.deleteBeermain';




export default class BeerFirstProject extends LightningElement {
    
    beer=beer;         //For Image
   
    @track searchBeer="";

    @track beerData=[];
    @track showComp=false;

    beerDetails(event){
        window.alert(event.target.searchBeer);
        // this[NavigationMixin.Navigate]({
        //      type: 'custom__objectPage',
        //     attributes: {
        //         objectApiName: 'Beer_Shop__c',
        //         actionName: 'Home',
        //    },
        //  });
    }
    @wire(beerlist)
    wine({data, error}){
        if(data){
            this.beerData=data;
        }
        else if(error){
            console.log(error);
        }
    }



    handleWineName(event){
this.searchBeer=event.target.value;
        main({beerName:this.searchBeer})
        .then((result)=>{
            this.beerData=result;
        });
    }

    handler(){
        this.showComp = true;
    }


    myFields = ['Name', 'Price__c','Quantity__c','Company_Name__c'];

    

    handleBeerCreated(){
        window.alert("Beer Data Enter Successfully");
        setTimeout(() => {
          
            eval("$A.get('e.force:refreshView').fire()");
        }, 1000);

        this.showComp=false;

    }
    closeModal(){
        this.showComp=false;
    }

   
   
     deletehandler(){
       // this.deleteBeer=event.target.value;
        deleteBeermain({beerId:this.beerData[0].Id})
        .then(result =>{
            window.alert('delete beer');

            setTimeout(() => {
          
                eval("$A.get('e.force:refreshView').fire()");
            }, 1000);
    
        });
     }


     deletebeer(){
        deleteBeermain({beerId:this.Id})
        .then(result =>{
            window.alert('delete beer');

            setTimeout(() => {
          
                eval("$A.get('e.force:refreshView').fire()");
            }, 1000);
    
        });
     }
}

