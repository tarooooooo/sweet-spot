# Rails.application.config.middleware.insert_before 0, Rack::Cors do
#   allow do
#     resource '*',
#              headers: ['Authorization', JWTSessions.access_header, JWTSessions.refresh_header, JWTSessions.csrf_header, 'sentry-trace'],
#              # expose: ['Authorization', 'X-Refresh-Token', 'X-CSRF-Token'],
#              methods: [:get, :post, :put, :patch, :delete, :options, :head],
#              credentials: true
#   end
# end
