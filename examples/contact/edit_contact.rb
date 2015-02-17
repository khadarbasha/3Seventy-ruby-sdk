require 'three_seventy_api'
require 'yaml'
# Example to edit the contact.
class EditContact
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
    contact_id = 1588615 ## Add contact_id here.
    # Load the payload here.
    payload = {
      "PhoneNumber" => , # Load phone number here. 
      "Email" =>  # Load email here.
    }
    # Initiate the client.
    client = ThreeSeventyApi::Client.new(url, username, password, account_id)
    # Now make a call to EditContact api and print the result.
    puts client.edit_contact(contact_id, payload)
  end
end
example = EditContact.new
example.run