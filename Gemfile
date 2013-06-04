source 'https://rubygems.org'

group :assets do
	gem 'sass-rails',   '~> 3.2.3'
	gem 'coffee-rails', '~> 3.2.1'
	gem 'uglifier', '>= 1.0.3'
	gem "zurb-foundation", ">= 4.0.9"
	gem "compass-rails", ">= 1.0.3"
end

group :development, :test do
	gem 'sqlite3'
	gem "rspec-rails", ">= 2.12.2"
	gem "factory_girl_rails", ">= 4.2.0"
end

group :production do
	gem 'pg'
end

group :test do
	gem "capybara", ">= 2.0.3"
	gem "database_cleaner", ">= 1.0.0.RC1"
	gem "email_spec", ">= 1.4.0"
end

group :development do
	gem "quiet_assets", ">= 1.0.2"
	gem "better_errors", ">= 0.7.2"
end

gem 'rails', '3.2.13'
gem 'jquery-rails'
gem "thin", ">= 1.5.0"
gem "figaro", ">= 0.6.3"
gem "binding_of_caller", ">= 0.7.1", :group => :development, :platforms => [:mri_19, :rbx]
gem "hub", ">= 1.10.2", :require => nil, :group => [:development]
gem 'httparty' 
gem 'newrelic_rpm'