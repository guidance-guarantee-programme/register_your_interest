require 'rack/throttle'

Rails.application.config.middleware.use Rack::Throttle::Interval
