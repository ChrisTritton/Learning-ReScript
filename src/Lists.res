/*
ReScript provides a singly linked list too. Lists are:
    immutable
    fast at prepending items
    fast at getting the tail
    slow at everything else
 
Like arrays, lists' items need to be of the same type.
You'd use list for its resizability, its fast prepend (adding at the head), and its fast split, all of which are immutable and relatively efficient.
Do not use list if you need to randomly access an item or insert at non-head position. Your code would end up obtuse and/or slow.
The standard lib provides a List module.

*/

let myList = list{3, 4, 5, 6} // of type list<int>
let newMyList = list{1, 2, ...myList} // creates a new list, doesn't actually prepend

Js.log(myList)

// check out Belt, the rescript standard library for many super juicy things you can
// do with arrays and lists: https://rescript-lang.org/docs/manual/latest/api/belt
