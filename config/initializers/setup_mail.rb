  

ActionMailer::Base.smtp_settings = {
 # :address              => "smtp.gmail.com",
  :address              => "mail.wd-mail.org",
  :port                 => 587,
 # :domain               => 'smtp.gmail.com',
  :domain               => "mail.wd-mail.org",
  :user_name            => "vinay@kreatio.com",
  :password             => "kreatio123",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
