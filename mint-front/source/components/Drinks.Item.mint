component Drinks.Item {
  property drink : Drink = {
    id = 0,
    name = "",
    url = ""
  }

  style base {
    box-shadow: 0px 1px 3px 0px rgba(0,0,0,0.1);
    border-radius: 2px;
    background: #FFF;
    padding: 10px;
  }

  style content {
    grid-area: content;
  }

  style link {
    text-decoration: none;
    transition: 50ms;
    color: inherit;
    display: block;

    /*
    &:hover {
      color: #{primary};
    }
    */
  }

  style name {
    margin-bottom: 5px;
    font-weight: bold;
    font-size: 20px;
  }

  fun render : Html {
    <div::base>
      <div::content>
        <a::link href={drink.url}>
          <div::name>
            <{ drink.name }>
          </div>
        </a>
      </div>
    </div>
  }
}
