class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def create
    GenerateRandomUserWorker.set(queue: 'low').perform_async()
    # binding.pry
    # AddMailerWorker.set(queue: 'high').perform_async(User.last.email)
    AddMailerWorker.perform_now(User.last.email)
    redirect_to root_path
  end

  def destroy_all
    User.all.destroy_all
    redirect_to root_path[]
  end
end
