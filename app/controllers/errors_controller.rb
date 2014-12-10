class ErrorsController < ApplicationController
  include Gaffe::Errors

  def show
    super
    expires_in(1.minute, public: true)
  end
end
