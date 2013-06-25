require "test_helper"

describe Profile do
  before do
    @profile = Profile.new
  end

  it "must be valid" do
    @profile.valid?.must_equal true
  end

  it "must respond to a fname attr" do
    @profile.must_respond_to :fname
  end

  it "must respond to a lname attr" do
    @profile.must_respond_to :lname
  end

  it "must respond to a tel attr" do
    @profile.must_respond_to :tel
  end

  it "must respond to a uid attr" do
    @profile.must_respond_to :uid
  end

  it "must respond to a bio attr" do
    @profile.must_respond_to :bio
  end

end
