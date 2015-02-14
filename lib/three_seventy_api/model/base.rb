# Base class.
class Base
  
  # @return [Integer] The primary key of the model.
  attr_accessor :id

  # Creates the json structure for the account object.
  #
  # @return [JSON] The json structure for an account object.
  def json_
    hash = {
      "Id" => id
    }
    hash.to_json
  end
end