import { LightningElement, track, wire } from 'lwc';
import acclist from '@salesforce/apex/fatchAccountData.acclist';
import conlist from '@salesforce/apex/fatchAccountData.conlist';

import opplist from '@salesforce/apex/fatchAccountData.opplist';

export default class FatchData extends LightningElement {

    

    accountValue;
    accountid;

    @track acc=[];
    @track con=[];
    @track opp=[];
    handler(event){
    this.accountValue=event.target.value;
    }

    @wire(acclist, {name:'$accountValue'})

    listaccount({data, error}){
        if(data){
        this.acc=data;
        }
        else if(error){
        console.log(error);
        }
 
    }
    selectAccId(event){
this.accountid=event.target.value;
    }

    @wire(conlist, {acid:'$accountid'})
    listcontact({data, error}){
        if(data){
        this.con=data;
        }
        else if(error){
        console.log(error);
        }
 
    }

    @wire(opplist, {acid:'$accountid'})
    listopportunity({data, error}){
        if(data){
        this.opp=data;
        }
        else if(error){
        console.log(error);
        }
 
    }
}