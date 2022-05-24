/**
Here we have a function that takes in a parameter that we've specified/labeled
to be a float and the fn returns a float. 

Notice we need to use /. and specify that the 2 is also a float by using
a decimal point. 
*/

module Math = {
  let divByTwo = (x: int): int => x / 2
  let divByTwoFloat = (x: float): float => x /. 2.

  let add = (a, b) => a + b // compiler knows it's two ints
  let concat = (a, b) => a ++ b // compiler knows it's two strings i.e. (string, string) => string

  let addFloats = (a, b) => a +. b // compiler infers that it's (float, float) => float
}
