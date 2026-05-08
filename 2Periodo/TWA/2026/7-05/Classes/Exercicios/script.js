class Person{
    constructor(firstname,lastname){
        this.firstname = firstname
        this.lastname = lastname
    }
}   

const amigo = Person("Joao", "Pedro");    
const amigo2 = Person("Joao", "Robson");

console.log(`Olá ${amigo.firstname} ${amigo.lastname}`);
console.log(`Olá ${amigo2.firstname} ${amigo2.lastname}`);