/*
ReScript has awesome type inference but if you want to annotate your types then this is how to do it. 
Remember that annotating types can be more for the programmer who has to make sense of you code later. 
But it helps the compiler give great error messages because it knows what inputs should be for example.
Learning how to do this will help get your head around types in rescript. 
*/

let value = "789 million billion zillion" // no type annotation, compiler will see it's a string
let valueOne: string = " is a string, and so it this"

Js.log(value ++ valueOne)

// -----------------------------------------------------------

// here we've annotated the input to only take strings
let convert = (input: string) => String.uppercase_ascii(input)

Js.log(convert)

// ------------------------------------------------------------

// we can define out own custom types

// here we have defined some custom types that are strings.
type lowercased = string
type uppercased = string

// we've annotated the input and the return of this fn to be strings
// this fn takes an input that must be a string and it returns a string
let anotherConvert = (input: lowercased): uppercased => String.uppercase_ascii(input)
