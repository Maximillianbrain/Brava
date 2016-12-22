class PagesController < ApplicationController
  def index
    if authenticate_user! # Checks if the user is signed in and if he is redirect him to show all
      redirect_to showall_workouts_path
    end
  end
end
