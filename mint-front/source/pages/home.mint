component Pages.Home {
  style home {
    flex: 1;
  }

  style title {
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

  style description {
    font-size: 20px;
    padding: 0 15px;

    a {
      text-decoration: none;
      color: #ed8e25;
      font-weight: bold;
      font-family: cursive;
    }
  }

  style mint {
    color: #33be75 !important;
  }

  style crystal {
    color: #000 !important;
  }

  style enter {
    margin: 1em 0 0;
    text-align: right;

    a {
      background-color: transparent;
      background-image: none;
      border: 1px solid;
      border-color: #ed8e25;
      border-radius: .25rem;
      color: #ed8e25;
      cursor: pointer;
      padding: .375rem .75rem;
      font-family: sans-serif;
      font-size: 1rem;
      font-weight: 400;
      vertical-align: middle;
    }
  }

  fun render : Html {
    <div::home>
      <div::title>
        <img src="./tropical-drink_1f379.png"/>
        <h1>"Summer drinks!"</h1>
      </div>

      <div::description>
        <span>
          "A simple site with 4 non-alcoholic summer drinks as featured in "
          <a href="https://www.fifteenspatulas.com/4-refreshing-summer-drinks/" target="_blank">"4 Refreshing Summer Drinks"</a>
          "! The site was built using "
          <a::mint href="https://www.mint-lang.com" target="_blank">"Mint"</a>
          " in the frontend and "
          <a::crystal href="https://crystal-lang.org/" target="_blank">"Crystal"</a>
          " in the backend."
        </span>
        <div::enter>
          <a href="/drinks">"Here are the recipes ..."</a>
        </div>
      </div>
    </div>
  }
}
