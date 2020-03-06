component Main {
  connect Application exposing { page }

  style base {
    display: flex;
    flex-direction: column;
    font-family: sans-serif;
    color: #696969;
  }

  fun render : Html {
    <div::base>
      case (page) {
        Page::Home =>
          <Pages.Home/>

        Page::Drinks =>
          <Pages.Drinks/>

        Page::NotFound =>
          <div>"Where am I?!"</div>
      }
    </div>
  }
}
