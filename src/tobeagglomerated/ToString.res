let sentence: string = "This sentence ends with a number: "
let fullStop: int = 123

let fullStopString = Js.Int.toString(fullStop)
let concatenated = sentence ++ fullStopString  // now we can concatenate  

Js.log(concatenated)



