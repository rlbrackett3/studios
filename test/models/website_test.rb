require "test_helper"

describe Website do

  before do
    DatabaseCleaner.start
    @profile = Fabricate :profile_with_user
    @website = @profile.websites.new(url: "http://www.example.com",
                                     title: "Website")
  end

  after do
    DatabaseCleaner.clean
  end

  it "must be valid" do
    @website.valid?.must_equal true
  end

  describe "Title" do

    it "must respond to title" do
      @website.must_respond_to :title
    end

    it "must not create a website without a title" do
      @website.title = nil
      @website.save.must_equal false
    end

  end

  describe "Handle" do

    it "must respond to handle" do
      @website.must_respond_to :handle
    end

  end

  describe "URL" do

    it "must respond to a url attr" do
      @website.must_respond_to :url
    end

    # it "must not save a website without a url" do
    #   @website.url = nil
    #   @website.save.must_equal false
    # end

    it "must allow a blank url" do
      @website.url = ""
      @website.save.must_equal true
    end

    it "must create a website with a valid url" do
      website = @profile.websites.new(url: "http://www.foobar.com",
                                      title: "Foobar")
      website.save.must_equal true
    end

    it "must not create a duplicate url" do
      website = @profile.websites.new(url: "http://www.example.com")
      website.valid?.must_equal false
    end

    it "must not accept an invaild url" do
      website = @profile.websites.new(url: "htp://ww.example,com")
      website.valid?.must_equal false
    end

  end

  describe "Associations" do

    it "must respond to profile" do
      @website.must_respond_to :profile
    end

  end

end
