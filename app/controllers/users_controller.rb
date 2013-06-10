class UsersController < ApplicationController
  def create
    user = User.find(params[:username])
    @total_score = user.total_score
    @avatar_url = user.avatar_url 
    @language = user.language
    @name = user.name
    @project_name = user.project_name
    @project_date = user.project_date
    @project_url = user.project_url
    render :new
  end
end