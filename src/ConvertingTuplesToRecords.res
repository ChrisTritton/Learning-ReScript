// ----------------------------Using Punning when Converting from Tuple to Record-----------------------------

Js.log("-------------------as a tuple:--------------------")
let ourTuple = ("Han", "Solo", "Pilot", 42)

Js.log(ourTuple)

type person = {
  firstname: string,
  lastname: string,
  occupation: string,
  aNumber: int,
}

// this fn takes in a tuple of four values and converts to a record
let convertToRecord = ((firstname, lastname, occupation, aNumber)) => {
  firstname: firstname,
  lastname: lastname,
  occupation: occupation,
  aNumber: aNumber,
}

Js.log("------------------as a record:--------------------")
Js.log(convertToRecord(ourTuple))

// Note: we needed to define the person type before we could make a record out of it. 
