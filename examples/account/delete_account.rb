require 'three_seventy_api'
require 'yaml'
# Example to delete an account.
class DeleteAccount
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
    account_id =  # Set account id here.
    # Initiate the client.
    client = ThreeSeventyApi::Client.new(url, username, password, account_id)
    # Now make a call to DeleteAccount api and print the result.
    puts client.delete_account(account_id)
  end
end
example = DeleteAccount.new
example.run