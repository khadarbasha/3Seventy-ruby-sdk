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
   client = ThreeSeventyApi::Client.new($username,$password)
   client.all_accounts() (or)
   client.all_accounts({:inactive=>true}) 

```
## Currently Supported API's 
```ruby
    Account
    AccountAttribute
    AccountAttributeCategory
    AccountAttributeDefinition
```
