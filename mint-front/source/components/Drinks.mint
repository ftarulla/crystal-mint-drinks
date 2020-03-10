component Drinks {
  connect Stores.Drinks exposing { status }
  connect Theme exposing { text }

  style base {
    flex-direction: column;
    align-items: center;
    margin: 40px 0;
    display: flex;
  }

  style message {
    margin-bottom: 20px;
    font-weight: bold;
    color: #{text};
  }

  style divider {
    margin: 1em 0;
  }

  get drinks : Array(Drink) {
    case (status) {
      Stores.Status::Ok data => data.drinks
      => [] /* default */
    }
  }

  fun intersperse(item : a, array : Array(a)) : Array(a) {
    Array.intersperse(item, array)
  }

  get drinksItems : Array(Html) {
    drinks
    |> Array.map((drink : Drink) : Html { <Drinks.Item drink={drink}/> })
    |> intersperse(<div::divider/>)
  }

  fun render : Html {
    case (status) {
      Stores.Status::Initial =>
        <div/>

      Stores.Status::Loading =>
        <div::base>
          <div::message>
            "Loading drinks..."
          </div>
        </div>

      Stores.Status::Error error =>
        <div::base>
          <div::message>
            <p>"There was an error loading the drinks :("</p>
            <p> <{error}> </p>
          </div>
        </div>

      Stores.Status::Ok =>
        <div>
          <{ drinksItems }>
        </div>
    }
  }
}
