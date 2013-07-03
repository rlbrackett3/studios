require "test_helper"

describe User do

  before do
    # @user = User.new
    @user = Fabricate :user
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

  # describe "Devise Fields" do

  #   subject { User }

  #   it { must have_fields(:email,
  #                         :encrypted_password,
  #                         :reset_password_token,
  #                         :current_sign_in_ip,
  #                         :last_sign_in_ip,
  #                         :invitation_token,
  #                         :role).of_type(String) }

  #   it { must have_fields(:reset_password_sent_at,
  #                         :remember_created_at,
  #                         :current_sign_in_at,
  #                         :last_sign_in_at,
  #                         :invitation_sent_at,
  #                         :invitation_accepted_at).of_type(Time) }

  #   it { must have_fields(:sign_in_count,
  #                         :invitation_limit).of_type(Integer) }

  #   it { must have_fields(:active).of_type(Boolean) }

  # end


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

  describe "User Role" do
    it "must respond to a role method" do
      @user.must_respond_to :role
    end

    it "must contain an array of ROLES" do
      User::ROLES.must_equal ["instructor", "assistant", "student"]
    end

    it "must assign a default role of student to a new user" do
      u = User.new
      u.role.must_equal "student"
    end

    it "must not save a user without a role" do
      @user.role = nil
      @user.save.must_equal false
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

  describe "Courses HABTM" do

    it "must respond to courses" do
      @user.must_respond_to :courses
    end

    it "must respond to course_ids" do
      @user.must_respond_to :course_ids
    end

    it "must create a new course" do
      c = @user.courses.create title: "New Course"
      c.users.must_include @user
      @user.courses.must_include c
    end

  end

end
