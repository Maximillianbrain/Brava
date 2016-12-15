class Workout
  include Mongoid::Document


  field :time_taken, type: Integer
  field :lenght, type: Integer
end
