class Account < Base
  attr_accessor :status
  attr_accessor :parent_id
  attr_accessor :name
  attr_accessor :created
  attr_accessor :allow_callback 
  attr_accessor :callback_token
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