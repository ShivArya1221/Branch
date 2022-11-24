import { LightningElement } from 'lwc';

export default class DDnChildtoParents extends LightningElement {

    handleadd(){
        this.dispatchEvent(new CustomEvent("add"));
    }
    handleminus(){
        this.dispatchEvent(new CustomEvent("sub"));
    }
}