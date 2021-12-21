/*
We covered normal variant types in VariantTypes.res 

Here we conver two built-in (predefined) variants called Option and List

Option 
  - helps handle non-existent values  


List 
  - 

*/

/*
In this fn, we've annotated the types for both the inputs and the output.
This fn takes in two inputs of polymorphic type alpha and beta and its return 
type is them swapped. Then we return them in the swapped order. 

This means we can use this one fn for ints, strings, floats etc instead of 
defining like 5 other fns to handle all those types. I.e. the swap fn is 'polymorphic' 
*/
let swap = (input1: 'a, input2: 'b): ('b, 'a) => (input2, input1)

Js.log(swap(45.126, "a string"))

// identifiers for polymorphic types can be anything as long as it's prepended by '

// ------------------------------Parameterized Types---------------------------------

type row<'alpha> = ('alpha, 'alpha, 'alpha, 'alpha, 'alpha)

// it looks as if we're passing an arg 'alpha to out type but what we're doing is using this row type as
// a function to build a tuple of any type.

// let rowOfStrings = row<"hey a string!">

// don't know how NB this is

// TODO: go back to vid 2:24:09 and look at it again when fresh

// ------------------------------OPTION--------------------------------

/*
The option type is a built-in variant type, but is just a regular variant. 

In other languages you can get a null value. 
E.g. a variable of type string in Javascript can be a string, or null or undefined.. these types are 
called 'nullable types'. This can cause problems when you forget to handle a case in your code where 
the value is non-existent. 

Every type in ReScript is non-nullable. It doesn't have null types. A string will always be a string. 

From Docs:
ReScript itself doesn't have the notion of null or undefined. This is a great thing, as it wipes out an entire category of bugs. 
No more undefined is not a function, and cannot access someAttribute of undefined!
However, the concept of a potentially nonexistent value is still useful, and safely exists in our language.
We represent the existence and nonexistence of a value by wrapping it with the option type. Here's its definition from the standard library:
*/

//----------------Using The Option Type to Address The Possibility of A Missing Value ----------------

// the option type definition from behind the scenes written out
type option<'a> =
  | None
  | Some('a)

let titleIsMissing = false

let title = if titleIsMissing {
  None // the variant type constructor None expects no arguments
} else {
  Some("ReScript Sandbox Repo") // if the title isn't missing then we'll wrap
}

/*
Hover over the title identifier and you'll see it's of type option<string>
which means it's an option type with a string passed to it.
So with our bool set to false, the title variable will be string wrapped using Some 
*/

// now we have the code that determines the value of title. We can use a switch to handle what happens when title is None or Some.
// Remember that the None variant construtor can't take any args and you can't use => to return something.

// this switch pattern-matches for all possible cases for the value of title (we know there are only 2 cuz title is an option... type)
let mainTitle = switch title {
| Some(mainTitle) => "The name of this repo is: " ++ mainTitle
| None => "We don't have the value"
}

// we have essentially removed the whole category of errors that involve nonexistent values for title.
Js.log(mainTitle)
