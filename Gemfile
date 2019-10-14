source 'https://rubygems.org'

gem 'rails', '3.2.17'

gem 'pg', groups: [:test, :production]

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

# Gems used for developing and testing, not
# used in production environments.
group :development, :test do
  gem 'guard'
  gem 'guard-rspec'
  gem 'rake'
  gem 'rspec-rails'
end

# Gems used only for developing and not
# used in production environments.
group :development do
  gem 'sqlite3'
  gem 'reek'
  gem 'cane'
  gem 'travis-lint'
end

gem 'jquery-rails'
gem 'haml-rails'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'
