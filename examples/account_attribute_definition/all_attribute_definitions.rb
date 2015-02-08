require 'three_seventy_api'
require 'yaml'
# Example to get all the account's attribute definitions.
class AllAttributeDefinitions
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
    # Now make a call to AllAttributeDefinitions api and print the result.
    puts client.all_attribute_definitions(account_id)
  end
end
example = AllAttributeDefinitions.new
example.run