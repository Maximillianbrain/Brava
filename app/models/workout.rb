class Workout
  include Mongoid::Document
  include Mongoid::Timestamps

  field :time_taken,          type: Integer
  field :lenght,              type: Integer
  field :created_by_username, type: String
  field :created_by_id,       type: String
end
