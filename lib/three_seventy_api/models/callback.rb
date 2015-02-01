class Callback < Base
  attr_accessor :account_id
  attr_accessor :callback_type
  attr_accessor :url
  attr_accessor :is_active
  def json_
    hash = {
      "Id" => id,
      "accountId" => account_id,
      "CallbackType" => callback_type,
      "Url" => url,
      "Active" => is_active
    }
    hash.to_json
  end
end