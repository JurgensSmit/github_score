class UsersController < ApplicationController
  def create
    user = User.find(params[:username])
    @total_score = user.total_score
    @avatar_url = user.avatar_url

    render :new
  end


end
