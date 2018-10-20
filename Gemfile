source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.3'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'devise'
gem 'haml'
gem 'record_tag_helper', '~> 1.0'
gem 'bootstrap'
gem 'social-share-button'
gem 'analytics-ruby', '~> 2.0.0', :require => 'segment/analytics'
gem 'trix'
gem 'jquery-rails'
gem 'carrierwave', '~> 1.0'
gem "fog-aws"
gem 'rmagick'
gem 'meta-tags'
gem 'friendly_id'
gem 'sitemap_generator'
gem 'bourbon'
gem 'neat'


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
