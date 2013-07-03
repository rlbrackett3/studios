require "test_helper"

describe Course do

  before do
    @course = Fabricate :course
    @bare_course = Course.new
    @valid_attr = { email: "ella@malakas.com",
                    password: "malakas123",
                    password_confirmation: "malakas123",
                    role: "student" }
  end

  # describe "Mongoid Matcher" do
  #   subject { Course }

  #   it { must be_document }
  #   it { must be_timestamped }

  #   it { must have_field(:title) }
  # end

  it "must be valid" do
    @course.valid?.must_equal true
  end

  it "must not be invalid" do
    @bare_course.valid?.must_equal false
  end

  describe "Title" do
    it "must have respond to title" do
      @bare_course.must_respond_to :title
    end

    it "must not save a course without a title" do
      @course.title = nil
      @course.save.must_equal false
    end

    it "must not save a course with a title < 2 char" do
      short_name = "a"
      @course.title = short_name
      @course.save.must_equal false
    end

    it "must not save a course with a title > 56 char" do
      long_name = "a" * 57
      @course.title = long_name
      @course.save.must_equal false
    end
  end

  describe "Description" do
    it "must respond to a decription" do
      @bare_course.must_respond_to :description
    end

    it "must not save a course with a description < 5 char" do
      @course.description = "a"
      @course.save.must_equal false
    end

    it "must allow save a course with a blank description" do
      @course.description = ""
      @course.save.must_equal true
    end
  end

  describe "School" do
    it "must respond to a school" do
      @bare_course.must_respond_to :school
    end
  end

  describe "Number" do
    it "must respond to a number" do
      @bare_course.must_respond_to :number
    end
  end

  describe "Term" do
    it "must respond to a term" do
      @bare_course.must_respond_to :term
    end
  end

  describe "Start Date" do
    it "must respond to a start_date" do
      @bare_course.must_respond_to :start_date
    end
  end

  describe "End Date" do
    it "must respond to a end_date" do
      @bare_course.must_respond_to :end_date
    end
  end

  describe "Published" do
    it "must respond to a published" do
      @bare_course.must_respond_to :published
    end

    it "must default published to false" do
      @bare_course.published.must_equal false
    end
  end

  describe "Timestamps" do
    it "must respond to created_at" do
      @bare_course.must_respond_to :created_at
    end
    it "must respond to updated_at" do
      @bare_course.must_respond_to :updated_at
    end
  end

  describe "User Association" do

    it "must respond to users" do
      @bare_course.must_respond_to :users
    end

    it "must create a new course" do
      u = @course.users.create @valid_attr
      u.courses.must_include @course
      @course.users.must_include u
    end

    it "must respond to user_ids" do
      @course.must_respond_to :user_ids
    end

  end
end
