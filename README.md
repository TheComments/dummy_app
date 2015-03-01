## TheComments Dummy App

### Create DIR for development

```
mkdir the_comments_dev
cd the_comments_dev
```

### Clone dependencies

```
git clone git@github.com:TheComments/dummy_app.git
git clone git@github.com:TheComments/the_comments_base
git clone git@github.com:TheComments/the_comments_manager
git clone git@github.com:TheComments/the_comments_subscriptions
git clone git@github.com:TheComments/the_comments_antispam_services
```

### Setup your RVM environment

```
rvm use ruby-2.2.0@the_comments_dev --create
```

### Bundle

```sh
cd dummy_app/
bundle install --binstubs
```

### Setup Bash script for development ENV

```sh
chmod 755 _app/*.sh
```

EDIT: `_app/_vars.sh`

```sh
# MAIN VARS
RUBY_VERSION='ruby-2.2.0'
GEMSET_NAME='the_comments_dev'
ENV_NAME='development'
```

### Prepare Dummy App

```sh
rake db:bootstrap_and_seed
```

### Start BACKGROUND PROCESSES (Redis + Sidekiq)

```sh
_app/start.sh
```

You will see

```sh
Redis: try to start
redis-server /Users/admin/rails/my_projects/the_comments_dev/dummy_app/config/redis_6500.config

SideKiq: try to start
/Users/admin/.rvm/bin/rvm ruby-2.2.0@the_comments_dev do bundle exec bin/sidekiq -e development -d -C /Users/admin/rails/my_projects/the_comments_dev/dummy_app/config/sidekiq.yml
```

### App start

```sh
rake db:bootstrap_and_seed

rails s -p 3000 -b localhost
```

Browser

```
http://localhost:3000/
```

### Stop BACKGROUND PROCESSES (Redis + Sidekiq)

```sh
_app/stop.sh
```

You will see

```sh
Sidekiq: try to stop
/Users/admin/.rvm/bin/rvm ruby-2.2.0@the_comments_dev do bundle exec bin/sidekiqctl stop /Users/admin/rails/my_projects/the_comments_dev/dummy_app/tmp/pids/sidekiq.pid
Sidekiq shut down gracefully.

Redis: try to stop
redis-cli -h localhost -p 6500 shutdown
```

### Tests start

```sh
RAILS_ENV=test rake db:bootstrap
RAILS_ENV=test rspec --format documentation
```
