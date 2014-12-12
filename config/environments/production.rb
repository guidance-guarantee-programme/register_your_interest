Rails.application.configure do

  # Code is not reloaded between requests.
  config.cache_classes = true

  # Eager load code on boot. This eager loads most of Rails and
  # your application in memory, allowing both threaded web servers
  # and those relying on copy on write to perform better.
  # Rake tasks automatically ignore this option for performance.
  config.eager_load = true

  # Full error reports are disabled and caching is turned on.
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Configure Fastly as our asset host
  config.action_controller.asset_host = ENV['FASTLY_CDN_URL']

  # Configure cache control for static assets: "public, s-maxage={ 1 year }, maxage={ 24 hours }"
  config.static_cache_control = 'public, s-maxage=31536000, maxage=86400'

  # Disable Rails's static asset server (Apache or nginx will already do this).
  config.serve_static_assets = false

  # Compress JavaScripts and CSS.
  config.assets.js_compressor = :uglifier
  config.assets.css_compressor = :sass

  # Do not fallback to assets pipeline if a precompiled asset is missed.
  config.assets.compile = false

  # Generate digests for assets URLs.
  config.assets.digest = true

  # Set to :debug to see everything in the log.
  config.log_level = :info

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation cannot be found).
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners.
  config.active_support.deprecation = :notify

  # Use default logging formatter so that PID and timestamp are not suppressed.
  config.log_formatter = ::Logger::Formatter.new

  # Use Rack::Cache
  # "value_max_bytes" is set to prevent Dalli from throwing exceptions for entities larger than
  # emcached's default 1MB max (memcached will just ignore them silently).
  # See https://devcenter.heroku.com/articles/rack-cache-memcached-rails31
  dalli_client = Dalli::Client.new((ENV["MEMCACHIER_SERVERS"] || "").split(","),
    username: ENV["MEMCACHIER_USERNAME"],
    password: ENV["MEMCACHIER_PASSWORD"],
    failover: true,
    socket_timeout: 1.5,
    socket_failure_delay: 0.2,
    value_max_bytes: 10485760
  )

  config.action_dispatch.rack_cache = {
    verbose: true,
    metastore: dalli_client,
    entitystore: dalli_client,
    allow_revalidate: false
  }

  # Force SSL across all requests unless non-ssl requests are explicitly allowed
  config.force_ssl = ENV['ALLOW_NON_SSL'] != 'true'
end

Rack::Timeout.timeout = 5 # seconds
