Devise.setup do |config|
config.mailer_sender='please-change-me-at-config-initializers-devise@example.com'
config.omniauth :github, '3ce177f550498a9d18a9',
 '20b06b43aa7dca80c6cc6188a0396eeb5f6d6964', :scope => 'user:email'
require 'devise/orm/active_record'
config.case_insensitive_keys = [:email]
config.strip_whitespace_keys = [:email]
config.skip_session_storage = [:http_auth]
config.stretches = Rails.env.test? ? 1 : 11
config.reconfirmable = true
config.expire_all_remember_me_on_sign_out = true
config.password_length = 6..128
config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
config.reset_password_within = 6.hours
config.sign_out_via = :delete
end
