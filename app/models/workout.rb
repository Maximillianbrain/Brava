class Workout
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :User

  field :time_taken, type: Integer
  field :lenght, type: Integer
end
