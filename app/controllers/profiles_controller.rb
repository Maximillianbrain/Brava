class ProfilesController < ApplicationController
  before_filter :authenticate_user!

  def index
  end

  def showuser
    @user = User.find([params:username])
  end
end
