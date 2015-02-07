require 'three_seventy_api'
require 'yaml'
# Example to delete an account's attribute definition.
class DeleteAttributeDefinition
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
    attribute_id = -1 ## Fill the attribute_id here.
    # Initiate the client.
    client = ThreeSeventyApi::Client.new(url, username, password)
    # Now make a call to DeleteAttributeDefinition api and print the result.
    puts client.delete_attribute_definition(account_id, attribute_id)
  end
end
example = DeleteAttributeDefinition.new
example.run