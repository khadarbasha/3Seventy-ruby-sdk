require 'three_seventy_api'
require 'yaml'
# Example to edit a attribute using AccountAttribute/EditAttribute api.
class EditAttribute
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
    #payload = {
    #  "t70_contact_quota" => 35
    #}
    
    # Give the key and value details here.
    payload = {
      "#fill attribute name here" => "#fill attribute value here"
    }

    # Make a call to EditAttribute api and print the result.
    puts client.edit_attribute(account_id, payload)
  end
end
example = EditAttribute.new
example.run