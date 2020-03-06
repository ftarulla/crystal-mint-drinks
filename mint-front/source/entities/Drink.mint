/* /entities/Drink.mint */

record Drink {
  id : Number,
  name : String,
  url : String
}

module Drink {
  fun empty : Drink {
    {
      id = 0,
      name = "",
      url = ""
    }
  }
}
