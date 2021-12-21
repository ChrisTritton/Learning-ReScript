

//--------------------------The For Loop-----------------------------

for (x in 0 to 8) {
  Js.log(x)
}

for (i in 8 downto 0) {
  Js.log(i)
}

//-------------------------The While Loop----------------------------

// TODO: 5:13:30 - while loops and references 

// There's no loop-breaking break keyword (nor early return from functions, for that matter) in ReScript. 
// However, we can break out of a while loop easily through using a mutable binding.

let break = ref(false);

while (!break.contents) {
  if (Js.Math.random() > 0.3) {
    break := true;
  } else {
    Js.log("Still running");
  };
};

Js.log("does this create a bad export?")
