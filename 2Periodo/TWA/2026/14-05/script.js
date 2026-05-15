function Person(name){
    this.name = name;
}

Person.prototype.sayHi = function(nome){
    console.log(`Hi ${nome}! \n My name is ${this.name}`);
    
}

const huguinho = new Person('huguinho');

function Teacher(name, teacherID){
    Person.call(this,name),
    this.teacherID = teacherID;
}

Teacher.prototype.sayHi = function(nome){
    console.log(`Hi ${nome}! \n My name is ${this.name} and my teacherID is ${teacherID}`);
    
}

Teacher.prototype = Person.prototype;
Teacher.prototype = contructor = Teacher;

Teacher.prototype.printID = function(){
    console.log(`ID: ${this.teacherID}`);
}

const patinhas = new Teacher('Tio Patinhas', 123);

console.dir(patinhas);

patinhas.printID()


function Studant(name, studantID){
    Person.call(this,name),
    this.studantID = studantID;
}