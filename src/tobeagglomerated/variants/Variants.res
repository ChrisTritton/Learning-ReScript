

/** 
answer is a variant type with the cases Yes, No, and PrettyMuch. 
these cases are called variant contructors and need to 
be capitalized. Yes, No and PrettyMuch are the variant type's constructors
*/
type simpleAnswer = 
  | Yes 
  | No 
  | PrettyMuch 

type animal =
  | Dog
  | Cat
  | Bird

type answer =
  | Yes
  | No
  | Maybe

/*
the variant type account has three cases (variant constructors) and
the last two specify the types of the args they can take when you 
use these skeletons to define variable to be of these types. 
None, Instagram and Facebook are the constructors for the 
variant type called account. 
 */
type account = 
  | None 
  | Instagram(string) 
  | Facebook(string, int)

type userAccount =
  | MyFloat(float)
  | MyString(string)
