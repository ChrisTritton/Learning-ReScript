/*
"Punning" refers to the syntax shorthand for when a label and a value are the same. 
For example, in JavaScript, instead of doing return {name: name}, you can do return {name}.

*/

type parents = {
  father: string,
  mother: string,
}

type person = {
  firstname: string, // the firstname field of any record of custom type person, must be of type string.
  lastname: string, // the lastname field of any record of custom type person, must be of type string.
  occupation: string, // the occupation field of any record of custom type person, must be of type string.
  parents: parents, // the parents field of any record of custom type person, must be of custom type parents.
}

// with the types defined, we can now define the records the will be of those types - compiler will infer which.

let parents = {
  // is we had called this 'parentsRecord', the punning below wouldn't work.
  father: "Anakin",
  mother: "Padme",
}

let luke = {
  firstname: "Luke",
  lastname: "Skywalker",
  occupation: "Jedi",
  parents: parents, // the parents field of the luke record contains a parents record of type parents. Instead of 'parents: parents' we can just write 'parents'.
}

// because the name of the field and the value is the same, we can pun the parents field.

Js.log(luke)
