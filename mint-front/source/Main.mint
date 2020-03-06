component Main {
  connect Application exposing { page }

  style base {
    display: flex;
    flex-direction: column;

    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;

    font-family: verdana;
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
