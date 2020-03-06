enum Page {
  Home
  Drinks
  NotFound
}

store Application {
  state page : Page = Page::Home

  fun navigateTo (page : Page) : Promise(Never, Void) {
    sequence {
      next { page = page}
      Http.abortAll()
    }
  }
}
