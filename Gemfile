source "https://rubygems.org"

ruby "3.3.11"

gem "rails", "~> 8.1.3"
gem "propshaft"
gem "puma", ">= 6.4"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "bootsnap", require: false
gem "tzinfo-data", platforms: %i[ windows jruby ]

group :development, :test do
  gem "sqlite3", ">= 2.1"
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "bundler-audit", require: false
end

group :production do
  gem "pg", "~> 1.5"
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
