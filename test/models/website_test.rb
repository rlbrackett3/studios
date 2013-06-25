require "test_helper"

describe Website do
  before do
    @website = Website.new
  end

  it "must be valid" do
    @website.valid?.must_equal true
  end

  it "must respond to a url attr" do
    @website.must_respond_to :url
  end

  # associations
  it "must respond to profile" do
    @website.must_respond_to :profile
  end

end
