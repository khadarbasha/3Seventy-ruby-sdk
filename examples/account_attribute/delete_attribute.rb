require 'three_seventy_api'
require 'yaml'
# Example to get the attribute details using AccountAttribute/DeleteAttribute api.
class DeleteAttribute
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
    attribute_name = ## Add the attribute to delete here.
    attribute_name = "t70_contact_quota"
    # Now get the attribute details and print the result.
    puts client.delete_attribute(account_id, attribute_name)
  end
end
example = DeleteAttribute.new
example.run