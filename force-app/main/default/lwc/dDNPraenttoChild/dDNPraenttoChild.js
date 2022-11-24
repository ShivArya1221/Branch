import { LightningElement } from 'lwc';

export default class DDNPraenttoChild extends LightningElement {
    number=0;

    handlerIncrement(){
        this.number++;

    }
    handlerDecrement(){
        this.number--;
    }
}