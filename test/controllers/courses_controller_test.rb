require "test_helper"

describe CoursesController do

  before do
    @course = Fabricate :course
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:courses)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create course" do
    assert_difference('Course.count') do
      post :create, course: {  }
    end

    assert_redirected_to course_path(assigns(:course))
  end

  it "must show course" do
    get :show, id: @course
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @course
    assert_response :success
  end

  it "must update course" do
    put :update, id: @course, course: {  }
    assert_redirected_to course_path(assigns(:course))
  end

  it "must destroy course" do
    assert_difference('Course.count', -1) do
      delete :destroy, id: @course
    end

    assert_redirected_to courses_path
  end

end
