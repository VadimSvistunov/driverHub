require 'faraday'
require 'json'

class NodeApi

    def initialize
        @url = "http://api:5000/api/advert/"
    end

    def show id
        @response = conn.get ("#{id}")
        @response.body
    end

    private

    def conn
        conn = Faraday.new(@url) do |f|
            f.request :json
            f.response :json
            f.adapter :net_http
        end
    end

    # def response
    #     pp @response.body
    #     #pp JSON.parse(@response.body)
    # end

end