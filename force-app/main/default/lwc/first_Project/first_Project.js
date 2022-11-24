import { LightningElement, track } from 'lwc';

export default class First_Project extends LightningElement {
    @track time="8:15 PM";
    @track Greeting="Good Evening";
    @track todos=[];
    @track date="13-12-11";

    connectedCallback(){
        this.getTime();

     //   var date = new Date();
   // this.date=date.toISOString();
    //console.log(date.toISOString())
    //var last=new Date(new Date().getFullYear(), 11, 32);
    //this.date1=last.toISOString();

        setInterval( () => {
            this.getTime();
            console.log("Set Interval Called");
        }, 1000); 
    }

    getTime(){
        const date=new Date();
        const hour=date.getHours();
        const min=date.getMinutes();

        this.time=`${this.getHour(hour)}:${this.getDoubleDigit(min)} ${this.getMidDay(hour)}`;

        this.setGreeting(hour);
        this.date=date.toDateString();
    }

    getHour(hour){
        return hour===0 ? 12: hour > 12 ? (hour-12):hour;
    }
    getMidDay(hour){
        return hour>=12 ? "PM" : "AM";
    }
    getDoubleDigit(digit){
        return digit<10 ? "0"+digit:digit;
    }

    setGreeting(hour){
        if(hour<12){
            this.Greeting="Good Morning";
        }else if(hour>=12 && hour < 17){
            this.Greeting="Good Afternoon";
        }else{
            this.Greeting="Good Evening";
        }
    }

    addTodoHandler(){
       const inputBox=this.template.querySelector("lightning-input"); 
       


       const todo={
        todoId:this.todos.length,
        todoName:inputBox.value,
        done:false,
        todoDate:new Date()
       }
       this.todos.push(todo);
       inputBox.value="";
    }

    get upcomingTasks(){
        return this.todos && this.todos.length ? this.todos.filter(todo => !todo.done) : []; 
    }

    get completedTasks(){
        return this.todos && this.todos.length ? this.todos.filter(todo => todo.done) : []; 
    }
}


