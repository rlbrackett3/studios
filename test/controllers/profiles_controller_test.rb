require "test_helper"

describe ProfilesController do

  before do
    @profile = Fabricate.build :profile_with_user
    @user = @profile.user
    sign_in :user, @user
  end

  # it "must not get index" do
  #   get :index
  #   assert_response :failure
  #   assert_not_nil assigns(:profiles)
  # end

  # it "must get new" do
  #   get :new
  #   assert_response :success
  # end

  # it "must create profile" do
  #   assert_difference('Profile.count') do
  #     post :create, profile: {  fname: @profile.fname,
  #                               lname: @profile.lname,
  #                               bio: @profile.bio,
  #                               tel: @profile.tel,
  #                               school_id: @profile.school_id,
  #                               user: @user
  #                             }
  #   end

  #   assert_redirected_to profile_path(assigns(:profile))
  # end

  it "must show profile" do
    get :show, id: @profile
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @profile
    assert_response :success
  end

  it "must update profile" do
    put :update, id: @profile, profile: { fname: @profile.fname,
                                          lname: @profile.lname,
                                          bio: @profile.bio,
                                          tel: @profile.tel,
                                          school_id: @profile.school_id,
                                        }
    assert_redirected_to profile_path(assigns(:profile))
  end

  # it "must destroy profile" do
  #   assert_difference('Profile.count', -1) do
  #     delete :destroy, id: @profile
  #   end

  #   assert_redirected_to profiles_path
  # end

end
