require 'three_seventy_api'
# Example to delete an account using Account/DelteAccount api.
class DelteAccount
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
    client = ThreeSeventyApi::Client.new(url, username,password)
    # Add account id to delete here.
    account_id_to_delete = # Add account id here.
    # Make a call to Account/DeleteAccount api and print the result.
    puts client.delete_account(account_id_to_delete)
  end
end
example = DelteAccount.new
example.run