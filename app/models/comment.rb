class Comment
  include Mongoid::Document
  include Mongoid::Timestamps


  field :username, type: String
  field :comment, type: String
end
