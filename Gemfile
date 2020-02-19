source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }


gem 'rails', '~> 6.0.1'
gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'twitter-bootstrap-rails'
gem 'jquery-rails'
gem 'devise'
gem 'devise-i18n'
gem 'rails-i18n'
gem 'carrierwave'
gem 'rmagick'
gem 'fog-aws'
gem 'dotenv-rails'
gem 'pundit'
gem 'resque', '~> 2.0'

group :development, :test do
  gem 'sqlite3', '~> 1.4'
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'pundit-matchers'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'shoulda-matchers', git: 'https://github.com/thoughtbot/shoulda-matchers.git'
end

group :production do
  gem 'pg'
end

group :development do
  gem 'capistrano', '~> 3.12'
  gem 'capistrano-bundler', '~> 1.6'
  gem 'capistrano-passenger', '~> 0.2.0'
  gem 'capistrano-rails', '~> 1.4'
  gem 'capistrano-rbenv', '~> 2.1', '>= 2.1.6'
  gem 'capistrano-resque', '~> 0.2.3', require: false
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # gem 'letter_opener', '~> 1.7'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
