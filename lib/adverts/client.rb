require 'faraday'
require 'json'

module Adverts
  class Client
    cattr_accessor :config, instance_writer: false, default: Config.new

    def self.configure
      yield config
    end

    def show(id)
      @response = connection.get("api/adverts/#{id}")
      @response.body
    end

    def cars(options = {})
      connection.get("api/cars").body.map { |data| Car.from_api(data) }
    end

    private

    def connection
      @connection ||= Faraday.new(url: config.url) do |f|
        f.request  :json
        f.response :json
      end
    end

    # def response
    #     pp @response.body
    #     #pp JSON.parse(@response.body)
    # end
  end
end
