class UsersController < ApplicationController
  before_action :set_profile, only: [:show]

  def index
    @users = User.all
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @user = User.find(params[:id])
    end

end
