require "test_helper"

describe User do

  before do
    DatabaseCleaner.start
    @user = User.new
  end

  after do
    DatabaseCleaner.clean
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

  it "must create a new active user" do
    # user = Fabricate(:user, email: 'wtf@wtf.com')
    user = Fabricate.build :user
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

  # this is protected
  # it "must respond to a setup_profile method" do
  #   @user.send(:public, :setup_profile).must_equal true
  # end

  it "must setup a user profile on create" do
    user = Fabricate :user, email: "foo@bar1.com"
    user.profile?.must_equal true
  end

  it "must respond to a full_name method" do
    @user.must_respond_to :full_name
  end

end
