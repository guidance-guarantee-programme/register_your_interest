class ApplicationController < ActionController::Base
  include Slimmer::Headers

  protect_from_forgery with: :exception

  before_filter do
    set_slimmer_headers(alpha_label: "before:#global-breadcrumb ol")
  end
end
