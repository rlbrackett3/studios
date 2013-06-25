require "test_helper"

describe User do
  before do
    @user = User.new
  end

  it "must be not be invalid" do
    @user.valid?.must_equal false
  end

  it "must be valid" do
    @user.email = "foo@bar.com"
    @user.password = "foobar123"
    @user.valid?.must_equal true
  end

  # Setting status of a user (actove: true/false)
  it "must respond to active boolean attr" do
    @user.must_respond_to :active
  end

  it "must createa new active user" do
    user = Fabricate(:user)
    user.active.must_equal true
  end

  it "must set a user to active:false" do
    @user.active = false
    @user.active.must_equal false
  end

  #################################
  ## Associations
  #################################

  # User Profile
  it "must respond to profile" do
    @user.must_respond_to :profile
  end
end
