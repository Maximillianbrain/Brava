class WorkoutsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]


  def index
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def showall
    @workouts = Workout.all.order('created_at DESC') #not the best idea, CHANGE
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)

    if @workout.save # checks if workout is valid
      redirect_to @workout
    else
      render 'new'  #renders new method if it is not valid
      end
  end

  def delete
    @workout = Workout.find(params[:id])
    @workout.destroy

    redirect_to root_path
  end

  def edit
    @workout = Workout.find(params[:id])
  end

  def update
    @workout = Workout.find(params[:id])

    if @workout.update(params[:workout].permit(:time_taken, :lenght))
      redirect_to @workout
    else
      render 'edit'
    end
  end

  private
  def workout_params
    params.require(:workout).permit(:time_taken, :lenght)
  end
end
