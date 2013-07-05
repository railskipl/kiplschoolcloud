require 'test_helper'

class BusServicesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bus_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bus_service" do
    assert_difference('BusService.count') do
      post :create, :bus_service => { }
    end

    assert_redirected_to bus_service_path(assigns(:bus_service))
  end

  test "should show bus_service" do
    get :show, :id => bus_services(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => bus_services(:one).to_param
    assert_response :success
  end

  test "should update bus_service" do
    put :update, :id => bus_services(:one).to_param, :bus_service => { }
    assert_redirected_to bus_service_path(assigns(:bus_service))
  end

  test "should destroy bus_service" do
    assert_difference('BusService.count', -1) do
      delete :destroy, :id => bus_services(:one).to_param
    end

    assert_redirected_to bus_services_path
  end
end
