class GenerateRandomUserWorker
  include Sidekiq::Worker

  def perform(*args)
    user = User.new
    user.name = Faker::Name.name
    user.contact = Faker::Number.number(digits: 10).to_s
    user.save!
  end
end
