class UsersController < ApplicationController

  before_filter :authenticate_user!
  #before_action :authenticate_user!
  def index
    @users = User.all
  end
end
