component Pages.Home {
  style description {
    font-size: 20px;
    padding: 0 15px;

    a {
      font-family: cursive;
      font-weight: bold;
    }
  }

  style fifteenspatulas {
    color: #ed8e25;
  }

  style mint {
    color: #02b046;
  }

  style crystal {
    color: #000;
  }

  style lang {
    font-size: 22px;
    font-weight: bold;
  }

  style enter {
    margin: 2em 1em 0;
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
    <>
      <div::description>
        <span>
          "A simple site with 4 non-alcoholic summer drinks as featured in "
          <a::fifteenspatulas href="https://www.fifteenspatulas.com/4-refreshing-summer-drinks/" target="_blank">"4 Refreshing Summer Drinks"</a>
          "! The site was built as an example of using "
          <a::mint::lang href="https://www.mint-lang.com" target="_blank">"Mint"</a>
          " in the frontend and "
          <a::crystal::lang href="https://crystal-lang.org/" target="_blank">"Crystal"</a>
          " in the backend."
        </span>
        <div::enter>
          <a href="/drinks">"Here are the recipes ..."</a>
        </div>
      </div>
    </>
  }
}
