require "test_helper"

describe User do

  before do
    DatabaseCleaner.start
    # @user = User.new
    @user = Fabricate :user
  end

  after do
    DatabaseCleaner.clean
  end

  it "must be not be invalid" do
    user = User.new
    user.valid?.must_equal false
  end

  it "must be valid" do
    @user.email = "foo@bar.com"
    @user.password = "foobar123"
    @user.valid?.must_equal true
  end


  describe "User Status" do
    it "must respond to active boolean attr" do
      @user.must_respond_to :active
    end

    it "must create a new active user" do
      user = Fabricate.build :user
      user.active.must_equal true
    end

    it "must set a user to active:false" do
      @user.active = false
      @user.active.must_equal false
    end
  end

  #################################
  ## Associations
  #################################

  describe "User Associations" do
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
  end

  describe "User Utilities" do
    it "must respond to a full_name method" do
      @user.must_respond_to :full_name
    end

    it "must construct the correct full name" do
      @user.profile.fname = "Foo"
      @user.profile.lname = "Bar"
      @user.full_name.must_equal "Foo Bar"
    end
  end
end
