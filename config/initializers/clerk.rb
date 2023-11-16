Clerk.configure do |c|
  c.api_key = Rails.application.credentials.clerk[:api_key]
  # c.base_url = "https://..." # if omitted: "https://api.clerk.dev/v1/"
  c.logger = Logger.new($stdout) # if omitted, no logging
  # TODO : redisにcache保存設定入れる
  c.middleware_cache_store = Rails.cache # if omitted: no caching
end