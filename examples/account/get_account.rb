require 'three_seventy_api'
# Example to retrive an account using Account/GetAccount api.
class GetAccount
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
    _account_id = # Add account id to retrive here.
    # Make a call to Account/GetAccount api and print the result.
    puts client.get_account(_account_id)
  end
end
example = GetAccount.new
example.run