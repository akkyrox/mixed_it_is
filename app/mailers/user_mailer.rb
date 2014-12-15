class UserMailer < ActionMailer::Base

  default :from => 'any_from_address@example.com'

  def registration_confirmation(patient)
    mail(:to => patient.email_id, :subject => "Registered")
  end
end
