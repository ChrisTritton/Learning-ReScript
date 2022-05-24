/** 
Variables in rescript are immutable by default, which is super cool 
let is the main keyword. 

But if you really need to be able to change a variable
you can make it a reference type. This is a rare need. 
*/

// declare a reference 
let someRef = ref(67897)

// to modify a reference use :=
someRef := 698