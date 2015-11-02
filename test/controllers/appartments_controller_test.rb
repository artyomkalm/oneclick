require 'test_helper'

class AppartmentsControllerTest < ActionController::TestCase
  setup do
    @appartment = appartments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:appartments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create appartment" do
    assert_difference('Appartment.count') do
      post :create, appartment: { city_id: @appartment.city_id, house_id: @appartment.house_id, latitude: @appartment.latitude, longitude: @appartment.longitude, lq_id: @appartment.lq_id, street_id: @appartment.street_id, user_id: @appartment.user_id }
    end

    assert_redirected_to appartment_path(assigns(:appartment))
  end

  test "should show appartment" do
    get :show, id: @appartment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @appartment
    assert_response :success
  end

  test "should update appartment" do
    patch :update, id: @appartment, appartment: { city_id: @appartment.city_id, house_id: @appartment.house_id, latitude: @appartment.latitude, longitude: @appartment.longitude, lq_id: @appartment.lq_id, street_id: @appartment.street_id, user_id: @appartment.user_id }
    assert_redirected_to appartment_path(assigns(:appartment))
  end

  test "should destroy appartment" do
    assert_difference('Appartment.count', -1) do
      delete :destroy, id: @appartment
    end

    assert_redirected_to appartments_path
  end
end
