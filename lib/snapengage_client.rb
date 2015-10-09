require "snapengage_client/version"
require "httparty"

module SnapengageClient
  class Client
    attr_reader :email

    BASE_URL = "https://www.snapengage.com/api/v1/user.json?"

    def initialize(email, api_key)
      @email = email
      @api_key = api_key
    end

    def user_details
      url = "#{BASE_URL}api_key=#{@api_key}&email=#{@email}"
      HTTParty.get(URI.encode(url))
    end

  end
end
