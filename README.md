## TheComments Dummy App

### Create DIR for development

```
mkdir test_the_comments
cd test_the_comments
```

### Clone dependencies

```
git clone git@github.com:TheComments/dummy_app.git
git clone git@github.com:TheComments/the_comments_base
git clone git@github.com:TheComments/the_comments_manager
git clone git@github.com:TheComments/the_comments_subscriptions
git clone git@github.com:TheComments/the_comments_antispam_services
```

### Bundle

```
cd dummy_app/
bundle install --binstubs
```

### Start BACKGROUND PROCESSES (Redis + Sidekiq)

```
_app/start.sh
```

### App start

```
rake db:bootstrap_and_seed

rails s -p 3000 -b localhost
```

Browser

```
http://localhost:3000/
```

### Tests start

```
RAILS_ENV=test rake db:bootstrap
RAILS_ENV=test rspec --format documentation
```
