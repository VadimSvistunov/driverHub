Rails.application.config.to_prepare do
  Adverts::Client.configure do |config|
    config.host = ENV['ADVERTS_HOST']
    config.port = ENV['ADVERTS_PORT']
  end
end
