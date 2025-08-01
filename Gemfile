source "https://rubygems.org"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 8.0"
# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"
# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails", "~> 2.0"
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"
# Use Redis adapter to run Action Cable in production
# gem "redis", ">= 4.0.1"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.14"

# Deploy this application anywhere as a Docker container [https://kamal-deploy.org]
gem "kamal", ">= 2.5", require: false

gem "activeadmin", "~> 3.3"
gem "cancancan", "~> 3.6"
gem "devise", "~> 4.9"
gem "dotenv", "~> 3.1"
gem "draper", "~> 4.0"
gem "exifr", "~> 1.4"
gem "foreman", "~> 0.88"
gem "pundit", "~> 2.5"
gem "sassc-rails", "~> 2.1"

group :development, :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "faker", "~> 3.4"

  gem "rspec", "~> 3.13"
  gem "rspec-rails", "~> 7.0"
  gem "rubocop", "~> 1.75"

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "brakeman", require: false

  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-rails-omakase", require: false

  # Use sqlite3 as the database for Active Record
  gem "sqlite3", ">= 1.4"
end

group :development do
  gem "byebug", "~> 12.0"
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"
  gem "wirble", "~> 0.1.3"
end

group :production do
  gem "pg", "~> 1.5"
end

group :test do
  gem "selenium-webdriver"
end

gem "jsbundling-rails", "~> 1.3"
