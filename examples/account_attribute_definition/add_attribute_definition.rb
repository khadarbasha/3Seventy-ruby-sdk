require 'three_seventy_api'
require 'yaml'
# Example to add a new attribute definition.
class AddAttributeDefinition
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
    # Load the payload here.
    payload = {
      "CategoryId" => ##Fill CategoryId here,
      "DataType" => ## Fill DataType here,
      "Name" => ## Fill Name here,
      "Inheritable" => ## Fill Inheritable here,
      "Description" => ## Fill Description here
    }
    # Now make a call to AddAttributeDefinition api and print the result.
    puts client.add_attribute_definition(account_id, payload)
  end
end
example = AddAttributeDefinition.new
example.run