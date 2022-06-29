module Adverts
  class Config
    attr_accessor :host, :port

    def url
      URI::HTTP.build(host: host, port: port).to_s
    end
  end
end
