# class GenerateRandomUserWorker < ApplicationJob
class GenerateRandomUserWorker
  include Sidekiq::Worker


  def perform(*args)
    puts "Done!!!"
    # binding.pry
    user = User.new
    user.name = Faker::Name.name
    user.contact = Faker::Number.number(digits: 10)
    # GenerateRandomUserWorker.perform_async(100)
    user.save!
    # redirect_to root_path
  end
end
