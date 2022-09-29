namespace :sample do
  desc "TODO"
  task test: :environment do
    puts 'hey there:)'
    GenerateRandomUserWorker.perform_async
    puts "done!!!"
  end
end
