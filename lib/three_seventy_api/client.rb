require './lib/three_seventy_api/helpers/request'
module ThreeSeventyApi
  class Client
    include Helpers::Request
    attr_reader :username, :password
    def initialize(username,password)
      @username = username
      @password = password
    end
  end
end