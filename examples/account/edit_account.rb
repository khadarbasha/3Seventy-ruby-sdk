require 'three_seventy_api'
require 'yaml'
# Example to edit an account.
class EditAccount
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
    account_id =  # Load account_id here.
    # Load ur payload here.
    payload = {
      "ParentId" => , # Add parent id here.
      "Name" =>  # Add name here.
    }
    # Initiate the client.
    client = ThreeSeventyApi::Client.new(url, username, password, account_id)
    # Now make a call to EditAccount api and print the result.
    puts client.edit_account(account_id, payload)
  end
end
example = EditAccount.new
example.run