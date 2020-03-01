Rails.application.configure do
  config.cache_classes = true

  config.eager_load = true

  config.active_job.queue_adapter = :resque
  config.active_job.queue_name_prefix = "bbq_#{Rails.env}"

  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present?

  config.assets.compile = false
  config.active_storage.service = :local
  config.log_level = :warn
  config.log_tags = [ :request_id ]
  config.action_mailer.perform_caching = false
  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify
  config.log_formatter = ::Logger::Formatter.new

  if ENV["RAILS_LOG_TO_STDOUT"].present?
    logger           = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    config.logger    = ActiveSupport::TaggedLogging.new(logger)
  end

  config.active_record.dump_schema_after_migration = false
  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.perform_deliveries = true

  config.action_mailer.delivery_method = :sendmail

  ActionMailer::Base.smtp_settings = {
      address:         'smtp.sendgrid.net',
      port:            '465',   #587
      authentication:  :plain,
      user_name:       ENV['SENDGRID_USERNAME'],
      password:        ENV['SENDGRID_PASSWORD'],
      domain:          'apxangelskoe.ru',
      enable_starttls_auto:  true
  }
  config.action_mailer.default_url_options = { host: 'apxangelskoe.ru' }

end
