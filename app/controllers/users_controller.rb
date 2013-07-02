class UsersController < ApplicationController
  before_action :set_user, only: [:show, :destroy]
  before_filter :authenticate_user!
  load_and_authorize_resource only: [:index, :show, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

end
