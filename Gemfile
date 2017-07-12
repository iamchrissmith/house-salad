source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.2'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'faraday'
gem 'figaro'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'haml', '~> 5.0'

group :development, :test do
  gem 'rspec-rails', '~> 3.5'
  gem 'capybara'
  gem 'launchy'
  gem 'factory_girl_rails'
  gem 'pry'
  gem 'pry-rails'
  gem 'pry-state'
  gem 'pry-byebug'
  gem 'database_cleaner'
  gem 'erb2haml'
  gem 'simplecov', :require => false, :group => :test
  gem 'shoulda-matchers', git: 'https://github.com/thoughtbot/shoulda-matchers.git', branch: 'rails-5'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :test do
  gem 'vcr'
  gem 'webmock'
end
