require 'three_seventy_api'
require 'yaml'
# Example to add a new contact.
class AddContact
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
    # Load the payload here.
    payload = {
      "PhoneNumber" => , # Load phone number here. 
      "Email" => # Load email here.
    }
    # Initiate the client.
    client = ThreeSeventyApi::Client.new(url, username, password, account_id)
    # Now make a call to AddContact api and print the result.
    puts client.add_contact(payload)
  end
end
example = AddContact.new
example.run