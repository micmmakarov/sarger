require 'test_helper'

class GainsControllerTest < ActionController::TestCase
  setup do
    @gain = gains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gain" do
    assert_difference('Gain.count') do
      post :create, gain: @gain.attributes
    end

    assert_redirected_to gain_path(assigns(:gain))
  end

  test "should show gain" do
    get :show, id: @gain.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gain.to_param
    assert_response :success
  end

  test "should update gain" do
    put :update, id: @gain.to_param, gain: @gain.attributes
    assert_redirected_to gain_path(assigns(:gain))
  end

  test "should destroy gain" do
    assert_difference('Gain.count', -1) do
      delete :destroy, id: @gain.to_param
    end

    assert_redirected_to gains_path
  end
end
