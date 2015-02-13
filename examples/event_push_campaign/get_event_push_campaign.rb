require 'three_seventy_api'
require 'yaml'
# Example to get the content.
class GetEventPushCampaign
  def run
    # List specified pushed campaign.
    config = YAML.load_file(File.expand_path("../../config.yml", __FILE__))
    # Load the account_id from config.
    account_id = config['account_id']
    # Load the url from config.
    url = config['url']
    # Load the username from config.
    username = config['username']
    # Load the password from config.
    password = config['password']
    event_campaign_id = # Fill with campaign id here.
    # Initiate the client.
    client = ThreeSeventyApi::Client.new(url, username, password, account_id)
    # Now make a call to GetContent api and print the result.
    puts client.get_content(event_campaign_id)
  end
end
example = GetEventPushCampaign.new
example.run