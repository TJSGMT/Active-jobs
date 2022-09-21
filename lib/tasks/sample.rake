namespace :sample do
  desc "TODO"
  task test: :environment do
    puts 'hey there:)'
    GenerateRandomUserWorker.perform_async
    # redirect_to "http://localhost:3000/"
    puts "done!!!"
  end
end
