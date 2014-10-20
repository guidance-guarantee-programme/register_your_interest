module Authentication
  extend ActiveSupport::Concern

  included do
    before_filter :authenticate
  end

  private

  def authenticate
    return unless username? && password?

    authenticate_or_request_with_http_basic do |u, p|
      u == username && p == password
    end
  end

  def username
    ENV['AUTH_USERNAME']
  end

  def username?
    !!username
  end

  def password
    ENV['AUTH_PASSWORD']
  end

  def password?
    !!password
  end
end
