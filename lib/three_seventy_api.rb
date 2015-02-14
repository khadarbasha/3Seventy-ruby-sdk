require 'rest-client'
require 'json-schema'
require 'three_seventy_api/version'
require 'three_seventy_api/api'
require 'three_seventy_api/model'
require 'three_seventy_api/helpers/request'
require 'three_seventy_api/helpers/url'
require 'pry'

module ThreeSeventyApi
  # ThreeSeventyApi client class.
  class Client
    # Include Request Module globally.
    include Helpers::Request
    include Helpers::Url
    attr_reader :username, :password, :url, :account_id
    include Api
    include Model

    # Constructor for the client.
    # 
    # @param url [String] Base url of the api.
    # @param username [String] Api Username.
    # @param password [String] Api password.
    # @param account_id [Integer] Account Id.
    # 
    # @return [ThreeSeventyApi::Client] ThreeSeventyApi client.
    def initialize(url, username, password, account_id)
      @url = url
      @username = username
      @password = password
      @account_id = account_id
    end
  end
end
