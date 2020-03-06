component Layout {
  property children : Array(Html) = []

  style base {
    display: flex;
    flex-direction: column;
    font-family: sans-serif;
    color: #696969;

    a {
      text-decoration: none;
      color: #ed8e25;
      font-weight: bold;
      font-family: cursive;
    }
  }

  style content {
    flex: 1;
  }

  style header {
    flex: 1;
    display: flex;
    flex-direction: row;
    align-items: center;

    img {
      width: 48px;
    }
    h1 {
      color: #ed8e25;
    }
  }

  style footer {
    flex: 1;
    display: flex;
    flex-direction: column;
    align-items: center;
    margin: 3em 0 0;
  }

  fun render : Html {
    <div::base>
      <div::header>
        <img src="./tropical-drink_1f379.png"/>
        <h1>"Summer drinks!"</h1>
      </div>

      <div::content>
        <{ children }>
      </div>

      <div::footer>
        <span>
          "Made with 🤓🔋"
        </span>
        <span>
          "In case of any 🐛, "
          <a href="https://github.com/ftarulla/crystal-mint-drinks" target="_blank">
            "here"
          </a>
          " is the source code!"
        </span>
      </div>
    </div>
  }
}
