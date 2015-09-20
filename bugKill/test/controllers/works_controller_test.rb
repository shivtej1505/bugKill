require 'test_helper'

class WorksControllerTest < ActionController::TestCase
  setup do
    @work = works(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:works)
  end

  test "should create work" do
    assert_difference('Work.count') do
      post :create, work: { privilege: @work.privilege, project_id: @work.project_id, user_id: @work.user_id }
    end

    assert_response 201
  end

  test "should show work" do
    get :show, id: @work
    assert_response :success
  end

  test "should update work" do
    put :update, id: @work, work: { privilege: @work.privilege, project_id: @work.project_id, user_id: @work.user_id }
    assert_response 204
  end

  test "should destroy work" do
    assert_difference('Work.count', -1) do
      delete :destroy, id: @work
    end

    assert_response 204
  end
end
