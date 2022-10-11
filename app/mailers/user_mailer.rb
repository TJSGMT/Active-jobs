class UserMailer < ApplicationMailer

  def welcome_email(email)
    mail(to: email, subject: 'Welcome to Our Community')
  end
end
