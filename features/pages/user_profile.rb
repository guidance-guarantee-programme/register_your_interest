module Pages
  class UserProfile < SitePrism::Page
    set_url '/register'
    set_url_matcher /\/register$/

    element :heading, 'h1'
  end
end
