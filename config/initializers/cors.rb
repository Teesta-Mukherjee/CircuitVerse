# config/initializers/cors.rb

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # Tauri desktop app (local dev)
    origins 'tauri://localhost'

    resource '/api/v1/auth/*',
      headers: %w[Authorization Content-Type],
      methods: %i[post options],
      credentials: true,
      max_age: 600
  end
end
