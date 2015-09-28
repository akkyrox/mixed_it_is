class UserMailer < ActionMailer::Base

  default :from => 'ravishankar@kreatio.com'

  def registration_confirmation(patient)
    mail(:to => patient.email_id, :subject => "Regarding: Happy birthday Ravi Shankar")
  end
end
