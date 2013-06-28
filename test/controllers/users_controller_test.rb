require "test_helper"

describe UsersController do

  before do
    @user = Fabricate :user
    sign_in :user, @user
  end

  it "should get index" do
    get :index
    assert_response :success
  end

  it "should get show" do
    get :show, id: @user
    assert_response :success
  end

end
