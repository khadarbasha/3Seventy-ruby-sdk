require 'three_seventy_api'
require 'yaml'
# Example to get the attribute details using AccountAttributeCategory/GetAccountAttributeCategory api.
class GetAccountAttributeCategory
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
    client = ThreeSeventyApi::Client.new(url, username, password)
    category_id = -1 ##fill category_id here.
    puts client.get_account_attribute_category(category_id)
  end
end
example = GetAccountAttributeCategory.new
example.run