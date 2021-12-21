
open Test

let intEquals = (~message=?, a: int, b: int) =>
  assertion(~message?, ~operator="Int equals", (a, b) => a === b, a, b)


test("Add", () => {  
  intEquals(2+2, 2)  
  intEquals(~message="1 + 2 === 3", 1+2, 3)
})