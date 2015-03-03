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

### Setup of AntiSpam Services for TheComments/AntiSpam

0. Get YANDEX CLEANWEB api key `https://tech.yandex.ru/keys/get/?service=cw`
0. Get AKISMET api keys `http://akismet.com`

**config/initializers/the_comments_base.rb**

```
TheCommentsBase.configure do |config|
  # PARAMS

  config.yandex_cleanweb_api_key  = 'YOUR-YCW-SECRET-TOCKEN'

  config.akismet_api_key          = 'YOUR-AKISMET-SECRET-TOCKEN'
  config.akismet_blog             = 'YOUR-AKISMET-WEBSITE-NAME'
end
```

### Setup of Email service for TheComments/Subscribtions

You can create any fake Gmail Account for testing, then change config file:

**config/settings.yml**

```yml
mailer:
  service: smtp
  host: 'localhost:3000'

  smtp:
    email:    my-gmail-email@gmail.com
    password: MyGMailPa$$worD

    authentication: plain
    address: 'smtp.gmail.com'
    domain:  'gmail.com'
    port:    587
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

### Tests start

```sh
RAILS_ENV=test rake db:bootstrap
RAILS_ENV=test rspec --format documentation
```
