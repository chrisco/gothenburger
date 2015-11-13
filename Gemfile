source 'https://rubygems.org'

ruby '2.2.3'

# TODO: Remove any unused gems

gem 'rails', '4.2.5'
gem 'pg', '~> 0.15'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'devise'
gem 'paperclip', github: 'thoughtbot/paperclip'
gem 'aws-sdk'
gem 'coveralls', require: false

group :production do
  gem 'rails_12factor'
end

group :development, :test do
  gem 'pry'
  gem 'dotenv-rails'
  gem 'rspec-rails'
  gem 'factory_girl'
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'shoulda-matchers'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
end
