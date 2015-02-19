require 'three_seventy_api'
require 'yaml'
# Example to get the contact attribute.
class GetContactAttribute
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
    contact_id = # Set the contact id here.
    contact_attribute_id = # Set the contact attribute id here.
    
    # Initiate the client.
    client = ThreeSeventyApi::Client.new(url, username, password, account_id)
    # Now make a call to GetContactAttribute api and print the result.
    puts client.get_contact_attribute(contact_id, contact_attribute_id)
  end
end
example = GetContactAttribute.new
example.run