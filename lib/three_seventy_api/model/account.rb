# Details for an account.
# Extends the Base class.
class Account < Base

  # @return [String] The current status of the account. This is the soft delete status.
  attr_accessor :status
 
  # @return [Integer] The parent id of the current account. This will be null for the root account.
  attr_accessor :parent_id
 
  # @return [String] The name of the current account. This will be null for the root account.
  attr_accessor :name

  # @return [Date] The date/time the account was created.
  attr_accessor :created
  
  # @return [Boolean] whether callback is allowed for an account or not.
  attr_accessor :allow_callback
  
  # @return [String] Token that is used when making callbacks. When 3Seventy makes a callback this token will be sent along with that callback request. This token can be whatever GUID of your choosing.
  attr_accessor :callback_token

  # Creates the json structure for an account object.
  #
  # @return [JSON] The json structure for an account object.
  def json_
    hash = {
      "Id" => id,
      "Status" => status,
      "ParentId" => parent_id,
      "Name" => name,
      "Created" => created,
      "AllowCallback" => allow_callback,
      "CallbackToken" => callback_token
    }
    hash.to_json
  end
end