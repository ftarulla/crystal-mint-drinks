component Main {
  connect Application exposing { page }

  fun render : Html {
    <Layout>
      case (page) {
        Page::Home =>
          <Pages.Home/>

        Page::Drinks =>
          <Pages.Drinks/>

        Page::NotFound =>
          <div>"Where am I?!"</div>
      }
    </Layout>
  }
}
