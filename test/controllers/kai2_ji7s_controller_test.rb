require 'test_helper'

class Kai2Ji7sControllerTest < ActionController::TestCase
  setup do
    @kai2_ji7 = kai2_ji7s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kai2_ji7s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kai2_ji7" do
    assert_difference('Kai2Ji7.count') do
      post :create, kai2_ji7: { 全羅文: @kai2_ji7.全羅文, 流水號: @kai2_ji7.流水號, 漢羅文: @kai2_ji7.漢羅文, 無齊記號: @kai2_ji7.無齊記號 }
    end

    assert_redirected_to kai2_ji7_path(assigns(:kai2_ji7))
  end

  test "should show kai2_ji7" do
    get :show, id: @kai2_ji7
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kai2_ji7
    assert_response :success
  end

  test "should update kai2_ji7" do
    patch :update, id: @kai2_ji7, kai2_ji7: { 全羅文: @kai2_ji7.全羅文, 流水號: @kai2_ji7.流水號, 漢羅文: @kai2_ji7.漢羅文, 無齊記號: @kai2_ji7.無齊記號 }
    assert_redirected_to kai2_ji7_path(assigns(:kai2_ji7))
  end

  test "should destroy kai2_ji7" do
    assert_difference('Kai2Ji7.count', -1) do
      delete :destroy, id: @kai2_ji7
    end

    assert_redirected_to kai2_ji7s_path
  end
end
