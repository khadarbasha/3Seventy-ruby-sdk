require 'rest-client'
require 'json-schema'
require 'three_seventy_api/version'
require 'three_seventy_api/api'
require 'three_seventy_api/helpers/request'
require 'pry'
module ThreeSeventyApi
  
  # Public: ThreeSeventyApi client class.
  # 
  # url - String, base url of the api.
  # username - String, username of the user.
  # password - String, password of the user.
  # 
  # => Examples
  #       - ThreeSeventyApi::Client.new(url, username, password)
  # 
  # Returns the api client object.
  class Client
    include Helpers::Request
    attr_reader :username, :password, :url
    include Api
    def initialize(url, username, password)
      @url = url
      @username = username
      @password = password
    end
  end
end
