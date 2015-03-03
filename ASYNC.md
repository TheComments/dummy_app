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
