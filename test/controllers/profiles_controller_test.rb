require "test_helper"

describe ProfilesController do

  before do
    @profile = Fabricate :profile_with_user
    @user = @profile.user
    sign_in :user, @user
  end


  it "must show profile" do
    get :show, user_id: @user.id, id: @profile
    assert_response :success
  end

  it "must get edit" do
    get :edit, user_id: @user.id, id: @profile
    assert_response :success
  end

  it "must update profile" do
    put :update,  user_id: @user.id,
                  id: @profile,
                  profile: {  fname: @profile.fname,
                              lname: @profile.lname,
                              bio: @profile.bio,
                              tel: @profile.tel,
                              school_id: @profile.school_id,
                            }
    assert_redirected_to user_path(assigns(:user))
  end

end
