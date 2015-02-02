# Public: Base class.
class Base
  # Public: 
  #       setter/getter for id.
  #       Represents primary key of the model.
  attr_accessor :id
  # Public: Creates the json structure for Base object.
  #
  # Examples
  #
  #   json_
  #
  # Returns the json structure for Base object.
  def json_
    hash = {
      "Id" => id
    }
    hash.to_json
  end
end