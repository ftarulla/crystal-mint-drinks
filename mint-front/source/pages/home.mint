component Pages.Home {
  style home {
    flex: 1;
    background-image: url("./jamie-street-vcn2ndJ5LwE-unsplash.jpg");
    background-size: cover;
    padding: 100px;

    h1 {
      font-size: 84px;
      color: #ffc925;
      text-shadow: 3px 3px #558ABB;
      font-family: cursive;
      margin: 24px 0;
    }
  }

  style title {
    display: flex;
    flex-direction: row;
    align-items: center;

    img {
      width: 100px;
    }
  }

  style description {
    background-color: rgba(0,0,0,.7);
    border-radius: 7px;
    color: #FFF;
    font-size: 24px;
    padding: 15px;

    a {
      text-decoration: none;
      color: #ffc925;
      font-style: italic;
    }
  }

  style enter {
    margin: 42px 0 0;
    text-align: right;

    a {
      text-decoration: none;
      color: #ffc925;
      font-style: normal;
    }
  }

  style imgCredits {
    flex: 1;
    height: 20px;
    color: #777;
    font-style: italic;
  }

  fun render : Html {
    <div::home>
      <div::title>
        <img src="./tropical-drink_1f379.png"/>
        <h1>"Summer drinks!"</h1>
      </div>

      <div::description>
        <p>
          "A simple site with 4 non-alcoholic summer drinks as featured in "
          <a href="https://www.fifteenspatulas.com/4-refreshing-summer-drinks/" target="_blank">"4 Refreshing Summer Drinks"</a>
          "!"
        </p>

        <p>
          "Example site using "
          <a href="https://www.mint-lang.com" target="_blank">"Mint"</a>
          " in the frontend and "
          <a href="https://crystal-lang.org/" target="_blank">"Crystal"</a>
          " in the backend"
        </p>
        <div::enter>
          <a href="/drinks">"Here are the recipes ..."</a>
        </div>
      </div>

      <div::imgCredits>
        "Photo by Jamie Street on Unsplash"
      </div>
    </div>
  }
}
