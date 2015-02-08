require 'three_seventy_api'
# Example to add a new account using Account/AddAccount api.
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
    # Initiate the client.
    client = ThreeSeventyApi::Client.new(url, username,password)
    # Add your payload here
    payload = {
      "ParentId" => # Set parentId here.,
      "Name" => # Set Name here.,
      "Channels" => # Set channels here.,
      "Attributes"=> # Set attributes here.
    }
    # Make a call to Account/AddAccount api and print the result.
    puts client.add_account(account_id, payload)
  end
end
example = AddAccount.new
example.run