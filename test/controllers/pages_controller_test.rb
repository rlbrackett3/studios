require "test_helper"

describe PagesController do

  before do
    # @user = Fabricate :user, role: "instructor"
    # sign_in :user, @user
  end

  it "should get index" do
    get :index
    assert_response :success
  end

end