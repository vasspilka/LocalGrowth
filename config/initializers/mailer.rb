ActionMailer::Base.smtp_settings = {
    address:               CONFIG[:action_mailer_address],
    port:                  CONFIG[:action_mailer_port],
   #domain:                CONFIG[:action_mailer_domain],
    user_name:             CONFIG[:action_mailer_username],
    password:              CONFIG[:action_mailer_password],
    authentication:        :login,
    enable_starttls_auto:  :true
}

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.default charset: 'utf-8'