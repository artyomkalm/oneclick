require 'test_helper'

class LqsControllerTest < ActionController::TestCase
  setup do
    @lq = lqs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lqs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lq" do
    assert_difference('Lq.count') do
      post :create, lq: { city_id: @lq.city_id, latitude: @lq.latitude, longitude: @lq.longitude, number_code: @lq.number_code }
    end

    assert_redirected_to lq_path(assigns(:lq))
  end

  test "should show lq" do
    get :show, id: @lq
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lq
    assert_response :success
  end

  test "should update lq" do
    patch :update, id: @lq, lq: { city_id: @lq.city_id, latitude: @lq.latitude, longitude: @lq.longitude, number_code: @lq.number_code }
    assert_redirected_to lq_path(assigns(:lq))
  end

  test "should destroy lq" do
    assert_difference('Lq.count', -1) do
      delete :destroy, id: @lq
    end

    assert_redirected_to lqs_path
  end
end
