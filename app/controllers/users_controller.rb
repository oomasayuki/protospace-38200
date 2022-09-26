class UsersController < ApplicationController

  def show
    @users = User.all
    @user = User.find(params[:id])
    #@prototypes = user.prototypes
  end

end
