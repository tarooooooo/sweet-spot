Clerk.configure do |c|
  c.api_key = Rails.application.credentials.clerk[:api_key]
  c.logger = Logger.new($stdout)
  c.middleware_cache_store = Rails.cache
end