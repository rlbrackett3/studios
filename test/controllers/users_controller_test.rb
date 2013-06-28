require "test_helper"

describe UsersController do

  before do
    @user = Fabricate :user, role: "instructor"
    sign_in :user, @user
  end

  it "should get index" do
    get :index
    assert_response :success
  end

  it "should get new" do
    skip
    get :new
    assert_response :success
  end

  it "should create a user" do
    skip
    assert_difference('User.count') do
      post :create, user: { email: @user.email,
                            password: @user.password,
                            password_confirmation: @user.password }
    end
    assert_redirected_to user_path(assigns(:user))
  end

  it "should get show" do
    get :show, id: @user
    assert_response :success
  end

  it "should destroy a user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end
    assert_redirected_to users_path
  end

end
