require 'rest-client'
require 'json-schema'
require 'three_seventy_api/version'
require 'three_seventy_api/api'
require 'three_seventy_api/helpers/request'
require 'pry'
module ThreeSeventyApi
  class Client
    include Helpers::Request
    attr_reader :username, :password
    include Api
    def initialize(username,password)
      @username = username
      @password = password
    end
  end
end
