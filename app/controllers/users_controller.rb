class UsersController < ApplicationController
  load_and_authorize_resource
  def index
    @users = @users.order("id desc").page(params[:page])
  end
end