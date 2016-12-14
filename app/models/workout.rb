class Workout
  include Mongoid::Document
  field :time_taken, type: DateTime
  field :time, type: DateTime
  field :lenght, type: String
end
