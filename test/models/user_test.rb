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

  # associations
  it "must respond to profile" do
    @user.must_respond_to :profile
  end
end
