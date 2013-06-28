class UsersController < ApplicationController
  before_action :set_profile, only: [:show, :destroy]
  before_filter :authenticate_user!
  load_and_authorize_resource

  def index
    @users = User.all
  end

  def show
  end

  # def new
  #   @user = User.new
  # end

  # def create
  #   @user = User.new(user_params)

  #   respond_to do |format|
  #     if @user.save
  #       format.html { redirect_to @user, notice: 'user was successfully created.' }
  #       format.json { render action: 'show', status: :created, location: @user }
  #     else
  #       format.html { render action: 'new' }
  #       format.json { render json: @user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /user/1
  # DELETE /user/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @user = User.find(params[:id])
    end

    # def user_params
    #   params.require(:user).permit(:email,
    #                                :password,
    #                                :password_confirmation,
    #                                :role,
    #                                :active)
    # end

    # def sign_up_params
    #  params.require(:user).permit(:email,
    #                               :password,
    #                               :password_confirmation,
    #                               :role,
    #                               :active)
    # end

    # def update_account_params
    #  params.require(:user).permit(:email,
    #                               :password,
    #                               :password_confirmation,
    #                               :current_password,
    #                               :role,
    #                               :active)
    # end

end
