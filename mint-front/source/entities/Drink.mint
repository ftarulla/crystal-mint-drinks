/* /entities/Drink.mint */

record Drink {
  id : Number,
  icon : String,
  name : String,
  url : String
}

module Drink {
  fun empty : Drink {
    {
      id = 0,
      icon = "",
      name = "",
      url = ""
    }
  }
}
