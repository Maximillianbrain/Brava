class Comment
  include Mongoid::Document
  include Mongoid::Timestamps

  embedded_in :Workout, class_name: "Comment"
  belongs_to :Workout

  field :username,          type: String
  field :text,              type: String
end
