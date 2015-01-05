source 'https://rubygems.org'

# Base gems

gem 'rails', '~> 4.2.0'
gem 'sqlite3'

gem 'jquery-rails'
gem 'jbuilder', '~> 1.2'

gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'

gem 'thin', group: [:development]
# gem 'therubyracer', platforms: :ruby

# delayed jobs
gem 'redis'
gem 'sidekiq'

# App gems
gem 'haml'
gem 'haml-rails'

gem 'sorcery'
gem 'rails_config'

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# SLIM
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
gem 'slim'
gem 'the_data_role_block_slim'
gem 'the_data_role_block_jquery'
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ~ SLIM
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# THE COMMENTS 3.0
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# gem 'the_comments', path: '../the_comments'

gem 'the_comments_base',
  # path: '../the_comments_base'
  github: "TheComments/the_comments_base"

gem 'the_comments_manager',
  # path: '../the_comments_manager'
  github: "TheComments/the_comments_manager"

gem 'the_comments_subscriptions',
  # path: '../the_comments_subscriptions'
  github: "TheComments/the_comments_subscriptions"

gem 'the_comments_antispam_services',
  # path: '../the_comments_antispam_services'
  github: "TheComments/the_comments_antispam_services"

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ~ THE COMMENTS
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ADDONS
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
gem 'the_log'
  # path: '../../../the_log'

gem 'pry-rails'

gem 'the_notification',
  github: 'TheProfitCMS/the_notification',
  branch: 'master'

gem 'bootstrap-sass',
  github: 'thomas-mcdonald/bootstrap-sass'

gem 'awesome_nested_set',
  git: 'https://github.com/collectiveidea/awesome_nested_set.git',
  branch: 'master'
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ~ ADDONS
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Test gems
group :development, :test do
  gem 'faker'
  gem 'timecop'
  gem 'factory_girl'
  gem "factory_girl_rails"
  gem 'rspec-rails', '~> 2.0'

  # gem 'database_cleaner'
end
