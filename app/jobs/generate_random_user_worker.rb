# class GenerateRandomUserWorker < ApplicationJob
class GenerateRandomUserWorker
  include Sidekiq::Worker


  def perform(*args)
    puts "Done!!!"
    # binding.pry
    user = User.new
    user.name = Faker::Name.name
    user.contact = Faker::Number.number(digits: 10)
    user.email = "tejas.g@simformsolutions.com"
    user.save!    
  end
end