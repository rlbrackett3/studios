class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update]
  before_filter :authenticate_user!
  load_and_authorize_resource only: [:edit, :update]
  skip_authorization_check only: [:show]

  # GET /profiles/1
  # GET /profiles/1.json
  def show
  end

  # GET /profiles/1/edit
  def edit
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update_attributes(profile_params)
        format.html { redirect_to user_path(@profile.user), notice: 'Profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      # @profile = Profile.find(params[:id])
      @user = User.find(params[:user_id])
      @profile = @user.profile
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:fname,:lname,:bio,:tel,:school,
                                      :website,:portfolio,:blog,
                                      :twitter_handle,
                                      :twitter_url,:facebook_url,:google_url,:linkdin_url,
                                      :avatar, :avatar_cache)
    end
end
