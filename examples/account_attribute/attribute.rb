require 'three_seventy_api'
require 'yaml'
# Example to get the attribute details.
class Attribute
  def run
    # Load config file
    config = YAML.load_file(File.expand_path("../../config.yml", __FILE__))
    # Load the account_id from config.
    account_id = config['account_id']
    # Load the url from config.
    url = config['url']
    # Load the username from config.
    username = config['username']
    # Load the password from config.
    password = config['password']
    # Initiate the client.
    client = ThreeSeventyApi::Client.new(:url => url, :username => username, :password => password)
    attribute_name = ## Fill attribute name here.
    # Now get the attribute details and print the result.
    puts client.attribute(account_id, attribute_name)
  end
end
attribute = Attribute.new
attribute.run