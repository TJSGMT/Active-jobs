env :PATH, ENV['PATH']
set :environment, "development"
set :output, "log/cron_log.log"
---
every 1.minute do
    rake 'sample:test'
end

# every :day, at: "18:44 pm" do
#     rake 'sample:test'
# end