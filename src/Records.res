

// it's easy to make a mistake with tuples because the role of a value is determined by its position in the tuple, no so with records.
// record types allow us to give names to the components and call them up using those names
// field names have more meaning than positional reference 


// this is a type of person, a record needs a type so you have to declare this type, this is Xtra work you have to do in exchange for the Xtra check the compiler does for you.   
type person = {
  firstname: string,
  lastname: string, 
  occupation: string
}

// this is a record called luke that is of type person 
let luke = {
  firstname: "Luke",
  lastname: "Skywalker",  
  occupation: "Jedi"
} 

// this fn takes only an arg of type person and returns its firstname field   
let getFirstname = person => person.firstname
Js.log(getFirstname(luke)) 

// but basically we are accessing the field by reference to its name not its position, which is far less error-prone yo (much safier)  


// you can keep your types in another file somewhere but then you need to tell compiler where to get them from like so: 

// this me variable we've set to be type student and we've told the compiler where that custom type is located 
let me: CustomTypes.student = {age: 28, name: "Chris"}

Js.log(me)

// ------------------------------------------------------------------------------------------------------

// Use Pattern-Matching / Destructuring to access fields of a record. Extract them by name and not position  

let { firstname , occupation } = luke // bind these two values from the fields of luke to variables of those names - cool 
Js.log(occupation)

// ------------------------------------------------------------------------------------------------------

//// NESTED RECORDS ////


// first we define the types and we nest the parents type within the person type 
type parents = {
  father: string,
  mother: string, 
}

type personNested = {
  firstname: string, 
  lastname: string, 
  occupation: string, 
  parents: parents, 
}


// now we define the records and do the same 
let lukeParents = {
  father: "Vader",
  mother: "Leya? I don't know"
}

let lukeNested = {
  firstname: "Luke",
  lastname: "Skywalker",
  occupation: "Jedi",
  parents: lukeParents 
}

// finally we use destructuring to get luke's parent from the nested record 

let { parents: {mother, father} } = lukeNested // gets from lukeNested, the parents record and gets the mother and father fields from it   
Js.log(mother ++ father)

// this can also be done using a function 

let extractParents = ({ parents: {father, mother}})=> father ++ mother

Js.log(extractParents(lukeNested))

// --------------------UPDATING RECORDS--------------------------

// you can't update records, you have to create new ones 

// but you can create new records from old records with the spread operator "fill luke in, occupation updated to farmer"
let updatedLuke = {...luke, occupation: "farmer"}



