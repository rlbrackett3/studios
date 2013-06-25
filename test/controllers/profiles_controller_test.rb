require "test_helper"

describe ProfilesController do

  before do
    @profile = profiles(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profiles)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create profile" do
    assert_difference('Profile.count') do
      post :create, profile: {  }
    end

    assert_redirected_to profile_path(assigns(:profile))
  end

  it "must show profile" do
    get :show, id: @profile
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @profile
    assert_response :success
  end

  it "must update profile" do
    put :update, id: @profile, profile: {  }
    assert_redirected_to profile_path(assigns(:profile))
  end

  it "must destroy profile" do
    assert_difference('Profile.count', -1) do
      delete :destroy, id: @profile
    end

    assert_redirected_to profiles_path
  end

end
