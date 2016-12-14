class Workout
  include Mongoid::Document
  field :time_taken, type: String
  field :time, type: String
  field :lenght, type: String
end
