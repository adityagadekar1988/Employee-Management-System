uri = ENV["REDIS_URL"] || "redis://localhost:6379/0"

Sidekiq.configure_client do |config|
  config.redis = { url: uri, network_timeout: 5 }
end

Sidekiq.configure_server do |config|
  config.redis = { url: uri, network_timeout: 5 }
end
