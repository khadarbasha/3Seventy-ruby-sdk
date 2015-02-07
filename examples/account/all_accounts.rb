require 'three_seventy_api'
# Example to retrive all the accounts using Account/AllAccounts api.
class AllAccounts
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
    # Make a call to Account/AllAccounts api and print the result.
    puts client.all_accounts
  end
end
example = AllAccounts.new
example.run