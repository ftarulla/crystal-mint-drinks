routes {
  / {
    parallel {
      Application.navigateTo(Page::Home)
    }
  }

  /drinks {
    parallel {
      Application.navigateTo(Page::Drinks)
      Stores.Drinks.load()
    }
  }

  * {
    Application.navigateTo(Page::NotFound)
  }
}
