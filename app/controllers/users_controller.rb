class UsersController < ApplicationController
  before_action :load_user, only: [:show]
  
  def index 
    @users = User.all 
  end

  def show 
    @user = User.find(params[:id])
  end

  private
    def load_user 
      @user = User.find(params[:id])
    end
end
