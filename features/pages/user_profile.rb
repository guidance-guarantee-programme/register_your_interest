module Pages
  class UserProfile < SitePrism::Page
    set_url '/profile'
    set_url_matcher /\profile$/

    element :heading, 'h1'
  end
end
