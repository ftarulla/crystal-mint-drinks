component Layout {
  property children : Array(Html) = []

  connect Theme exposing {
    text,
    primary
  }

  style base {
    display: flex;
    flex-direction: column;
    font-family: sans-serif;
    color: #{text};

    a {
      text-decoration: none;
    }
  }

  style header {
    flex: 1;

    a {
      display: flex;
      flex-direction: row;
      align-items: center;

      img {
        width: 48px;
      }
      h1 {
        color: #{primary};
      }
    }
  }

  style content {
    flex: 1;
    padding: 0 20px;
  }

  style footer {
    flex: 1;
    display: flex;
    flex-direction: column;
    align-items: center;
    margin: 3em 0 0;

    a {
      color: #{primary};
    }
  }

  fun render : Html {
    <div::base>
      <div::header>
        <a href="/">
          <img src="./tropical-drink_1f379.png"/>
          <h1>"Summer drinks!"</h1>
        </a>
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
