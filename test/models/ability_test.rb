require "test_helper"

describe Ability do

  before do
    DatabaseCleaner.start

    @instructor = Fabricate(:user, role: "instructor")
    @assistant = Fabricate(:user, role: "assistant")
    @student = Fabricate(:user, role: "student")

    @i_ability = Ability.new(@instructor)
    @a_ability = Ability.new(@assistant)
    @s_ability = Ability.new(@student)
  end

  after do
    DatabaseCleaner.clean
  end

  describe "Instructor Role" do
    describe "User Permissions" do
      it "must allow an instructor to manage a user" do
        assert @i_ability.can?(:manage, User.new)
      end
    end

    describe "Profile Permissions" do
      it "must allow an instructor to manage a Profile" do
        assert @i_ability.can?(:manage, Profile.new)
      end
    end
  end

  describe "Assistant Role" do
    describe "User Permissions" do

      it "must allow an assistant to create a user" do
        assert @a_ability.can?(:create, User.new)
      end

      it "must not allow an assistant to destroy a user" do
        assert @a_ability.cannot?(:destroy, User.new)
      end

      it "must not allow an assistant to update a user" do
        assert @a_ability.cannot?(:update, User.new)
      end

      it "must allow an assistant to view a user" do
        assert @a_ability.can?(:show, User.new)
      end

    end

    describe "Profile Permissions" do

      it "must not allow an assistant to manage a Profile" do
        assert @a_ability.cannot?(:manage, Profile.new)
      end

      it "must allow an assistant to view a Profile" do
        assert @a_ability.can?(:show, Profile.new)
      end

    end
  end

  describe "Student Role" do
    describe "User Permissions" do

      it "must not allow a student to manage a user" do
        assert @s_ability.cannot?(:manage, User.new)
      end

      it "must allow a student to view a user" do
        assert @s_ability.can?(:show, User.new)
      end

    end

    describe "Profile Permissions" do
      it "must not allow a student to create a Profile" do
        assert @s_ability.cannot?(:create, Profile.new)
      end

      it "must not allow a student to destroy a Profile" do
        assert @s_ability.cannot?(:destroy, Profile.new)
      end

      it "must allow a student to update only their Profile" do
        assert @s_ability.can?(:update, Profile.new(user: @student))
        assert @s_ability.cannot?(:update, Profile.new)
      end

      it "must allow a student to view a Profile" do
        assert @s_ability.can?(:show, Profile.new)
      end
    end
  end

end