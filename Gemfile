source 'https://rubygems.org'

gem 'rails', '4.1.4'

# this is all stuff to get heroku to work
gem 'sqlite3', :group => [:development, :test]
group :production do
  gem 'thin'
  gem 'pg'
end
gem 'rails_serve_static_assets', group: [:production]
gem 'heroku_rails_deflate', :group => :production

gem 'sass-rails', :git => 'git://github.com/rails/sass-rails.git' # point this back to rubygems once they officially support sass 3.3
gem 'haml-rails'
gem 'uglifier'
gem 'autoprefixer-rails'
gem 'coffee-rails'

# linters
gem 'scss-lint', '~> 0.26.2'
gem 'jshint_on_rails'
gem 'rubocop', require: false

gem 'therubyracer',  platforms: :ruby

gem 'jquery-rails'
gem 'pjax_rails'

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring', group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

