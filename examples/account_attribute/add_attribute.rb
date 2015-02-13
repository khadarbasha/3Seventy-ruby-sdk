require 'three_seventy_api'
require 'yaml'
# Example to add a new attribute using AccountAttribute/AddAttribute api.
class AddAttribute
  def run
    
    # Load the config file
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
    client = ThreeSeventyApi::Client.new(url, username, password)
    name = "test119"
    # Make a call to AddAttribute api and print the result.
    client.add_attribute(account_id, name)
  end
end
example = AddAttribute.new
example.run