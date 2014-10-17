module Pages
  class UserProfile < SitePrism::Page
    set_url '/'
    set_url_matcher /\/$/

    element :heading, 'h1'
  end
end
