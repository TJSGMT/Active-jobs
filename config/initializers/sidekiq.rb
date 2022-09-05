# redis "sidekiq/server"

# if Rails.environment.development?
#   Sidekiq.redis = Redis.new(host: 'localhost', port: '6379')
# else
#   uri = URI.parse(ENV['REDIS_URL'])
#   REDIS = SIDEKIQ.new(host: uri.host, port:uri.port, password: uri.password)
#   Sidekiq.redis = REDIS
# end
# Sidekiq.configure_server do |config|
#  config.redis = { url: 'redis://localhost:6379/0'}
# end

# Sidekiq.configure_client do |config|
#   config.redis = {url: 'redis://localhost:6379/0'}
# end
