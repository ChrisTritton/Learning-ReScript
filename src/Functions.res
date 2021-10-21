
// functions are normal values in rescript 
// for example, 

let function = x => float_of_string(x)

// we can also write this by just assigning the function to an identifier 
let convert = float_of_string

Js.log(convert("456.8977"))
