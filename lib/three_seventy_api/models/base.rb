class Base
  attr_accessor :id
  def json_
    hash = {
      "Id" => id
    }
    hash.to_json
  end
end