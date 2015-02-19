require 'three_seventy_api'
require 'yaml'
# Example to add a new account.
class AddAccount
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
    # Load ur payload here.
    payload = {
      "ParentId" => , # Add parent id here.
      "Name" =>  # Add name here.
    }
    # Initiate the client.
    client = ThreeSeventyApi::Client.new(url, username, password, account_id)
    # Now make a call to AddAccount api and print the result.
    puts client.add_account(payload)
  end
end
example = AddAccount.new
example.run