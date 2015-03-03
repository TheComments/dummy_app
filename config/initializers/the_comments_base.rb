# TheCommentsBase.config.param_name => value

TheCommentsBase.configure do |config|
  config.max_reply_depth     = 5                   # comments tree depth
  config.tolerance_time      = 5                   # sec - after this delay user can post a comment
  config.default_state       = :draft              # default state for comment
  config.default_owner_state = :published          # default state for comment for Moderator
  config.empty_inputs        = [:commentBody]      # array of spam trap fields
  config.default_title       = 'Undefined title'   # default commentable_title for denormalization

  config.empty_trap_protection     = true
  config.tolerance_time_protection = true

  # Yandex CleanWeb
  # https://tech.yandex.ru/keys/get/?service=cw

  # Akismet
  # http://akismet.com

  # config.yandex_cleanweb_api_key  = nil
  # config.akismet_api_key          = nil
  # config.akismet_blog             = nil

  config.default_mailer_email = 'test@example.com'
  config.async_processing     = false
end
