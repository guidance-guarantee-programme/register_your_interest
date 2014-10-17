Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.paths << Rails.root.join('vendor', 'assets', 'bower_components', 'govuk_elements',
                                                         'public', 'sass')

Rails.application.config.assets.precompile += %w( register-your-interest.js register-your-interest.css
                                                  register-your-interest-ie6.css register-your-interest-ie7.css
                                                  register-your-interest-ie8.css )
