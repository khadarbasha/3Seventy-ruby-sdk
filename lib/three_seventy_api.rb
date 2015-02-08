require 'rest-client'
require 'json-schema'
require 'three_seventy_api/version'
require 'three_seventy_api/api'
require 'three_seventy_api/helpers/request'
require 'pry'

module ThreeSeventyApi
  # ThreeSeventyApi client class.
  class Client
    include Helpers::Request
    attr_reader :username, :password, :url
    include Api

    # Initializer for client.
    # 
    # @param url [String] Base url of the api.
    # @param username [String] Api Username.
    # @param password [String] Api password.
    # 
    # @return [ThreeSeventyApi::Client]
    def initialize(url, username, password)
      @url = url
      @username = username
      @password = password
    end
  end
end
