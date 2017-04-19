source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end



gem 'rails', '~> 5.0.2'
gem 'devise'
gem 'sqlite3'
gem 'puma', '~> 3.0'
gem 'bootstrap-sass', '~> 3.3.5'
gem 'twitter-bootstrap-rails'
gem 'devise-bootstrap-views'
#gem 'activeadmin', github: 'activeadmin'
gem 'rails_admin', '~> 1.1.1'
gem "paperclip", git: "git://github.com/thoughtbot/paperclip.git"
gem 'cancan'
#gem 'will_paginate', '~> 3.1', '>= 3.1.5'
gem 'draper', "3.0.0.pre1"
gem 'activemodel-serializers-xml', git: 'https://github.com/rails/activemodel-serializers-xml'
gem 'pundit'
gem 'omniauth'
gem 'omniauth-github'
gem 'kaminari'
gem 'letter_opener'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
#gem 'google-analytics-rails', '1.1.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bcrypt', '~> 3.1.7'
gem 'tinymce-rails'

group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
