class AddMailerWorker < ApplicationJob
  # class AddMailerWorker 
  # include Sidekiq::Worker

  def perform(email)
    # binding.pry
    UserMailer.welcome_email(email).deliver_now
    puts "Yay Mailer is working"
  end
  handle_asynchronously :perform
  # handle_asynchronously :perform, :run_at => Proc.new { 2.minutes.from_now }
end