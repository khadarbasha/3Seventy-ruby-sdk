require 'three_seventy_api'
# Example to edit an account using Account/EditAccount api.
class EditAccount
  def run
    # Load the config file
    config = YAML.load_file(File.expand_path("../../config.yml", __FILE__) 
    # Load the account_id from config.
    account_id =  config['account_id']
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
      "Name" => # Set name here.,
      "ParentId" => # Set parentId here.,
      "Attributes" => # Set attributes here.,
    }
    # Make a call to Account/EditAccount api and print the result.
    puts client.edit_account(account_id, payload)
  end
end
example = EditAccount.new
example.run