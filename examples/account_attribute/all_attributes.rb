require 'three_seventy_api'
require 'yaml'
# Example to show account_attributes/all_attributes end point api call.
class AllAttributes
  def run
    # Load config file
    config = YAML.load_file(File.expand_path("../../config.yml", __FILE__))
    # Load account_id from config.
    account_id = config['account_id']
    # Load url from config.
    url = config['url']
    # Load username from config.
    username = config['username']
    # Load password from config.
    password = config['password']
    # Initiate the client.
    client = ThreeSeventyApi::Client.new(:url => url, :username => username, :password => password)
    # Make a call to all_attributes api and print the result.
    puts client.all_attributes(account_id)
  end
end
all_attributes = AllAttributes.new
all_attributes.run