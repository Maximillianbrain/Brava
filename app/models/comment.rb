class Comment
  include Mongoid::Document
  include Mongoid::Timestamps

  embedded_in :workout

  field :username, type: String
  field :text, type: String
end
