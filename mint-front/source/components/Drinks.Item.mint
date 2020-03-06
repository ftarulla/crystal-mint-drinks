component Drinks.Item {
  property drink : Drink = Drink.empty()

  style base {
    box-shadow: 0px 1px 3px 0px rgba(0,0,0,0.2);
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
    color: #{Theme.Default.secondary()};
    display: block;

    &:hover {
      color: #{Theme.Default.secondaryDarker()};
    }

    display: flex;
    flex-direction: row;
    align-items: center;
  }

  style icon {
    flex: 1;
    font-size: 22px;
    margin: 0 3px;
    max-width: 24px;
    text-align: center;
  }

  style name {
    flex: 1;
    font-weight: 400;
    font-size: 21px;
    margin: 0 7px 0;
  }

  fun render : Html {
    <div::base>
      <div::content>
        <a::link href={drink.url} target="_blank">
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
