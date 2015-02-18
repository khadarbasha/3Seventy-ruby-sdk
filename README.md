# ThreeSeventyApi

Ruby wrapper for 3Seventy Api.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'three_seventy_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install three_seventy_api

## Sample Usage

Initialize the client
```ruby
   client = ThreeSeventyApi::Client.new($url, $username, $password, $account_id)
```
## Generating the Documentation (During Development)

```ruby
    yard server --gems
```
Now visit http://0.0.0.0:8808/docs/three_seventy_api/frames to view the documentation.


## Currently Supported API's 
```ruby
    Content
    Subscription
    Campaign
    EventPushCampaign
```
