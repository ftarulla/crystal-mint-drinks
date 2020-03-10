/* /stores/Drink.mint */

enum Stores.Status(a) {
  Initial
  Loading
  Error(String)
  Ok(a)
}

record Stores.Status.Drinks {
  drinks : Array(Drink)
}

store Stores.Drinks {
  state status : Stores.Status(Stores.Status.Drinks) = Stores.Status::Initial

  fun load() : Promise(Never, Void) {
    sequence {
      next { status = Stores.Status::Loading }

      response = "https://demo5780178.mockable.io/drinks"
                |> Http.get()
                |> Http.header("Content-Type", "application/json")
                |> Http.send()

      newStatus = case (response.status) {
                    404 => Stores.Status::Error("Not Found")
                        =>  try {
                              /* parse JSON */
                              object = Json.parse(response.body)
                                      |> Maybe.toResult("")

                              /* JSON to Drinks */
                              drinks = decode object as Stores.Status.Drinks

                              Stores.Status::Ok(drinks)

                            } catch Object.Error => error {
                              Stores.Status::Error("Could not decode the response.")
                            } catch String => error {
                              Stores.Status::Error("Could not parse the response.")
                            }
                  }

      next { status = newStatus }

    } catch Http.ErrorResponse => error {
      next { status = Stores.Status::Error("Network error.") }
    }
  }
}
