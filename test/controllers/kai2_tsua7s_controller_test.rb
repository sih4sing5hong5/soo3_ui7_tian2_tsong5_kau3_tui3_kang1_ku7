require 'test_helper'

class Kai2Tsua7sControllerTest < ActionController::TestCase
  setup do
    @kai2_tsua7 = kai2_tsua7s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kai2_tsua7s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kai2_tsua7" do
    assert_difference('Kai2Tsua7.count') do
      post :create, kai2_tsua7: { 全羅文: @kai2_tsua7.全羅文, 全羅逝: @kai2_tsua7.全羅逝, 流水號: @kai2_tsua7.流水號, 漢羅文: @kai2_tsua7.漢羅文, 漢羅逝: @kai2_tsua7.漢羅逝 }
    end

    assert_redirected_to kai2_tsua7_path(assigns(:kai2_tsua7))
  end

  test "should show kai2_tsua7" do
    get :show, id: @kai2_tsua7
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kai2_tsua7
    assert_response :success
  end

  test "should update kai2_tsua7" do
    patch :update, id: @kai2_tsua7, kai2_tsua7: { 全羅文: @kai2_tsua7.全羅文, 全羅逝: @kai2_tsua7.全羅逝, 流水號: @kai2_tsua7.流水號, 漢羅文: @kai2_tsua7.漢羅文, 漢羅逝: @kai2_tsua7.漢羅逝 }
    assert_redirected_to kai2_tsua7_path(assigns(:kai2_tsua7))
  end

  test "should destroy kai2_tsua7" do
    assert_difference('Kai2Tsua7.count', -1) do
      delete :destroy, id: @kai2_tsua7
    end

    assert_redirected_to kai2_tsua7s_path
  end
end
