component Drinks.Item {
  property drink : Drink = Drink.empty()

  style base {
    box-shadow: 0px 1px 3px 0px rgba(0,0,0,0.3);
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

    display: flex;
    flex-direction: row;
    align-items: center;
  }

  style icon {
    flex: 1;
    max-width: 24px;
    text-align: center;
  }

  style name {
    flex: 1;
    font-weight: 400;
    font-size: 21px;
    margin: 0 0.2em 0;
  }

  fun render : Html {
    <div::base>
      <div::content>
        <a::link href={drink.url}>
          <div::icon>
            <{ drink.icon }>
          </div>
          <div::name>
            <{ drink.name }>
          </div>
        </a>
      </div>
    </div>
  }
}
