class AddMailerWorker
  include Sidekiq::Worker

  def perform(email)
    UserMailer.welcome_email(email).deliver_now
    puts "Yay Mailer is working"
  end
end