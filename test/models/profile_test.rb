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

  describe "school attr" do
    it "must respond to a uid attr" do
      @profile.must_respond_to :school
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

  describe "Connection" do

    describe "Websites" do

      it "must respond to a website" do
        @profile.must_respond_to :website
      end

      it "must save a profile with a valid website url" do
        @profile.website = "http://www.foobar.com"
        @profile.valid?.must_equal true
      end

      it "must not save a profile with an invalid website url" do
        @profile.website = "htp:/ww,examplecm"
        @profile.valid?.must_equal false
      end

      it "must respond to a portfolio" do
        @profile.must_respond_to :portfolio
      end

      it "must save a profile with a valid portfolio url" do
        @profile.portfolio = "http://www.foobar.com"
        @profile.valid?.must_equal true
      end

      it "must not save a profile with an invalid portfolio url" do
        @profile.portfolio = "htp:/ww,examplecm"
        @profile.valid?.must_equal false
      end

      it "must respond to a blog" do
        @profile.must_respond_to :blog
      end

      it "must save a profile with a valid blog url" do
        @profile.blog = "http://www.foobar.com"
        @profile.valid?.must_equal true
      end

      it "must not save a profile with an invalid blog url" do
        @profile.blog = "htp:/ww,examplecm"
        @profile.valid?.must_equal false
      end

    end

    describe "Social Links" do

      it "must respond to a twitter_handle" do
        @profile.must_respond_to :twitter_handle
      end

      it "must respond to a twitter_url" do
        @profile.must_respond_to :twitter_url
      end

      it "must save a profile with a valid twitter_url url" do
        @profile.twitter_url = "http://www.foobar.com"
        @profile.valid?.must_equal true
      end

      it "must not save a profile with an invalid twitter_url url" do
        @profile.twitter_url = "htp:/ww,examplecm"
        @profile.valid?.must_equal false
      end

      it "must respond to a facebook_url" do
        @profile.must_respond_to :facebook_url
      end

      it "must save a profile with a valid facebook_url url" do
        @profile.facebook_url = "http://www.foobar.com"
        @profile.valid?.must_equal true
      end

      it "must not save a profile with an invalid facebook_url url" do
        @profile.facebook_url = "htp:/ww,examplecm"
        @profile.valid?.must_equal false
      end

      it "must respond to a google_url" do
        @profile.must_respond_to :google_url
      end

      it "must save a profile with a valid google_url url" do
        @profile.google_url = "http://www.foobar.com"
        @profile.valid?.must_equal true
      end

      it "must not save a profile with an invalid google_url url" do
        @profile.google_url = "htp:/ww,examplecm"
        @profile.valid?.must_equal false
      end

      it "must respond to a linkdin_url" do
        @profile.must_respond_to :linkdin_url
      end

      it "must save a profile with a valid linkdin_url url" do
        @profile.linkdin_url = "http://www.foobar.com"
        @profile.valid?.must_equal true
      end

      it "must not save a profile with an invalid linkdin_url url" do
        @profile.linkdin_url = "htp:/ww,examplecm"
        @profile.valid?.must_equal false
      end

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

end
