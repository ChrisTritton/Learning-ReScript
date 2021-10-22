// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Caml_obj = require("rescript/lib/js/caml_obj.js");

var areStructurallyEqual = Caml_obj.caml_equal([
      11,
      22
    ], [
      22,
      11
    ]) ? true : false;

console.log("(11, 22) == (22, 11) is", areStructurallyEqual, "because they're not structually equal (they don't have the same content)");

var areNotStructurallyEqual = Caml_obj.caml_notequal([
      34,
      78
    ], [
      78,
      34
    ]) ? true : false;

console.log("(34, 78) != (78, 34) is", areNotStructurallyEqual, "because they're not structurally equal (they don't have the same content)");

var areReferentiallyEqual = [
  11,
  22
] === [
  11,
  22
];

console.log("(11, 22) === (11, 22) is", areReferentiallyEqual, "because they're not referentially equal (they don't point to same location in memory)");

var areNotReferentiallyEqual = [
  11,
  22
] !== [
  11,
  22
];

console.log("(11, 22) !== (11, 22) is", areNotReferentiallyEqual, "because they're not referentially equal (they don't point to same location in memory)");

var x = [
  9,
  99
];

console.log(x === x);

console.log(x === [
      9,
      99
    ]);

var y = x;

exports.areStructurallyEqual = areStructurallyEqual;
exports.areNotStructurallyEqual = areNotStructurallyEqual;
exports.areReferentiallyEqual = areReferentiallyEqual;
exports.areNotReferentiallyEqual = areNotReferentiallyEqual;
exports.x = x;
exports.y = y;
/* areStructurallyEqual Not a pure module */
