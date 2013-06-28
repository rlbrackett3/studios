require "test_helper"

describe Profile do

  before do
    DatabaseCleaner.start
    # @user = Fabricate :user
    @profile = Fabricate :profile_with_user
  end

  after do
    DatabaseCleaner.clean
  end

  it "must be valid" do
    @profile.valid?.must_equal true
  end

  it "must respond to a created_at attr" do
    @profile.must_respond_to :created_at
  end

  it "must respond to a updated_at attr" do
    @profile.must_respond_to :updated_at
  end

  describe "fname attr" do
    it "must respond to a fname attr" do
      @profile.must_respond_to :fname
    end

    it "must not create a profile with a fname < 2 char" do
      short_name = "a"
      @profile.fname = short_name
      @profile.valid?.must_equal false
    end

    it "must not create a profile with a fname > 24 char" do
      long_name = "a" * 25
      @profile.fname = long_name
      @profile.valid?.must_equal false
    end
  end

  describe "lname attr" do
    it "must respond to a lname attr" do
      @profile.must_respond_to :lname
    end

    it "must not create a profile with a lname < 2 char" do
      short_name = "a"
      @profile.lname = short_name
      @profile.valid?.must_equal false
    end

    it "must not create a profile with a lname > 24 char" do
      long_name = "a" * 25
      @profile.lname = long_name
      @profile.valid?.must_equal false
    end
  end

  describe "tel attr" do
    it "must respond to a tel attr" do
      @profile.must_respond_to :tel
    end
  end

  describe "school_id attr" do
    it "must respond to a uid attr" do
      @profile.must_respond_to :school_id
    end
  end

  describe "bio attr" do
    it "must respond to a bio attr" do
      @profile.must_respond_to :bio
    end

    it "must not create a profile with a bio < 2 char" do
      short_name = "a"
      @profile.bio = short_name
      @profile.valid?.must_equal false
    end
  end

  #################################
  ## Associations
  #################################

  describe "User Associations" do
    it "must respond to user" do
      @profile.must_respond_to :user
    end

    it "must not create a profile without a user" do
      profile = Profile.new
      profile.valid?.must_equal false
    end
  end

  describe "Website Associations" do
    it "must respond to websites" do
      @profile.must_respond_to :websites
    end
  end

end
