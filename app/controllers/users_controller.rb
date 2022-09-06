class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    GenerateRandomUserWorker.perform_async
    redirect_to root_path
  end

  def destroy_all
    User.all.destroy_all
    redirect_to root_path
  end
end
