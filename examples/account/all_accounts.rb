require 'three_seventy_api'
require 'yaml'
# Example to list all the accounts.
class AllAccounts
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
    inactive =   # Set to true to get all accounts, active and inactive. 
    client = ThreeSeventyApi::Client.new(url, username, password, account_id)
    # Now make a call to AllAccounts api and print the result.
    puts client.all_accounts(inactive)
  end
end
example = AllAccounts.new
example.run