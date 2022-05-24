/*
make a topic in the forum and say that the following error message 
is should be fixed to say that it expects only one arg 
not just that it expects one string 

type account = 
  | None 
  | Instagram(string) 
  | Facebook(string, int)

let accountTwo = Variants.Instagram("Jenny", "yui", "qwer")
*/

// -------- USING VARIANT TYPES --------- //

/* * two ways of setting the pet object here to be a variant type
 that happens to be of type dog. */
let pet1: Variants.animal = Dog
let pet2 = Variants.Dog

/* here we're setting up the two account objects to be of 
variant type account and taking on the types of Facebook 
and then Instagram and feeding in the values for those 
objects into the variant constructors. Like classes */
let accountOne = Variants.Facebook("Josh", 26)
let accountTwo = Variants.Instagram("Jenny")
Js.log2(accountOne, accountTwo) // understand this output

// --------- WITHOUT A SWITCH -------------//

let handleAnswer = (input: Variants.answer) => {
  if input == Yes {
    "foo"
  } else if input == No {
    "bar"
  } else {
    "other"
  }
}

Js.log2("First Answer:", handleAnswer(Maybe))

// ---- THE ABOVE USING A SWITCH ----- //

let handleAnswerSwitch = (a: Variants.answer) => {
  switch a {
  | Yes => " ..It was a Yes type"
  | No => " ..It was a No type"
  | _ => "other"
  }
}
Js.log2("Final Answer:", handleAnswerSwitch(Yes))
Js.log2("Final Answer:", handleAnswerSwitch(No))
Js.log2("Final Answer:", handleAnswerSwitch(Maybe))



/* ---- Now The Variants Have Arg Types, with Switch ---- 

Here the variant constructors (the cases that the variant type 'animal' 
can take on) have the types of the args they can take specified.

So animal can be a 

This code takes in unput that can be as an int or a string or a float 
and then uses it in a nested loop to draw a box (sorta).. The point is 
using switch to handle multiple input types
*/

// type variantUserInput =
//   | Two
//   | Four
//   | Eight

// type variantUserInput =
//   | Int(int)
//   | String(string)
//   | Float(float)

// let draw = (boxSize: int) => {
//   for y in 1 to boxSize {
//     let arr = []
//     for x in 1 to boxSize {
//       let count = Js.Array2.push(arr, "+")
//     }
//     Js.log(arr)
//   }
// }

/**
handleDrawBox will return whatever the swith statement returns and 
the switch returns whatever the fn on the RHS of the fat arrow returns 

Takes in whatever the user gives and switches to the correct translation 
and then feeds user's input as an int into the draw function. 
*/
// let handleDrawBox = (input: variantUserInput) =>
//   switch input {
//   | Int(i) => draw(i)
//   | String(s) => draw(Js.Int.fromString(s))
//   | Float(f) => "converts input to int and then calls draw() with it"
//   }

// let resultFinal = handleDrawBox("4")
// learn how to put in a None leg or the switch 


