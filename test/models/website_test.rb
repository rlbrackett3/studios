require "test_helper"

describe Website do

  before do
    DatabaseCleaner.start
    @profile = Fabricate :profile_with_user
    @website = @profile.websites.new(url: "http://www.example.com")
  end

  after do
    DatabaseCleaner.clean
  end

  it "must be valid" do
    @website.valid?.must_equal true
  end

  it "must respond to a url attr" do
    @website.must_respond_to :url
  end

  it "must not create a website without a url" do
    website = @profile.websites.new(url: nil)
    website.save.must_equal false
  end

  it "must create a website with a url" do
    website = @profile.websites.new(url: "http://www.foobar.com")
    website.save.must_equal true
  end

  it "must not create a duplicate url" do
    website = @profile.websites.new(url: "http://www.example.com")
    website.valid?.must_equal false
  end

  it "must not accept an invaild url" do
    website = @profile.websites.new(url: "htp://ww.example.com")
    website.valid?.must_equal false
  end

  # associations
  it "must respond to profile" do
    @website.must_respond_to :profile
  end

end
