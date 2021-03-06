// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Caml_array = require("rescript/lib/js/caml_array.js");

var arr = [
  "hello",
  "world",
  "how are you?"
];

var words = [
  "word1",
  "word2",
  "word3"
];

var createArray = Caml_array.make;

console.log(words);

console.log(arr);

var arrayOfFortyTwo = Caml_array.make(45, "elem");

console.log(arrayOfFortyTwo);

if (words.length !== 3) {
  throw {
        RE_EXN_ID: "Match_failure",
        _1: [
          "Arrays.res",
          41,
          4
        ],
        Error: new Error()
      };
}

var word1 = words[0];

var word2 = words[1];

var word3 = words[2];

console.log(word1 + word2);

exports.arr = arr;
exports.words = words;
exports.createArray = createArray;
exports.arrayOfFortyTwo = arrayOfFortyTwo;
exports.word1 = word1;
exports.word2 = word2;
exports.word3 = word3;
/*  Not a pure module */
