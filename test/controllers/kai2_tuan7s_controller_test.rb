require 'test_helper'

class Kai2Tuan7sControllerTest < ActionController::TestCase
  setup do
    @kai2_tuan7 = kai2_tuan7s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kai2_tuan7s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kai2_tuan7" do
    assert_difference('Kai2Tuan7.count') do
      post :create, kai2_tuan7: {  }
    end

    assert_redirected_to kai2_tuan7_path(assigns(:kai2_tuan7))
  end

  test "should show kai2_tuan7" do
    get :show, id: @kai2_tuan7
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kai2_tuan7
    assert_response :success
  end

  test "should update kai2_tuan7" do
    patch :update, id: @kai2_tuan7, kai2_tuan7: {  }
    assert_redirected_to kai2_tuan7_path(assigns(:kai2_tuan7))
  end

  test "should destroy kai2_tuan7" do
    assert_difference('Kai2Tuan7.count', -1) do
      delete :destroy, id: @kai2_tuan7
    end

    assert_redirected_to kai2_tuan7s_path
  end
end
