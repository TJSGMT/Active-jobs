class GenerateRandomUserWorker
  include Sidekiq::Worker

  def perform(*args)
    puts "Done!!!"
    user = User.new
    user.name = Faker::Name.name
    user.contact = Faker::Number.number(digits: 10)
    user.save!
    # redirect_to root_path
  end
end
