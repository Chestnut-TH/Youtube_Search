source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.9'
gem 'rails', '~> 6.1.5'
#追加
gem 'devise'
#追加
gem 'devise-i18n'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.4', require: false
group :development, :test do
  #変更
  gem 'sqlite3', '~> 1.4'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  #追加
  gem 'letter_opener_web'
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver', '>= 4.0.0.rc1'
  gem 'webdrivers'
end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
