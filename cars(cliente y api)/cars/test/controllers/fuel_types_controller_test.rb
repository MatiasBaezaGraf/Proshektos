require 'test_helper'

class FuelTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fuel_type = fuel_types(:one)
  end

  test "should get index" do
    get fuel_types_url
    assert_response :success
  end

  test "should get new" do
    get new_fuel_type_url
    assert_response :success
  end

  test "should create fuel_type" do
    assert_difference('FuelType.count') do
      post fuel_types_url, params: { fuel_type: { name: @fuel_type.name } }
    end

    assert_redirected_to fuel_type_url(FuelType.last)
  end

  test "should show fuel_type" do
    get fuel_type_url(@fuel_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_fuel_type_url(@fuel_type)
    assert_response :success
  end

  test "should update fuel_type" do
    patch fuel_type_url(@fuel_type), params: { fuel_type: { name: @fuel_type.name } }
    assert_redirected_to fuel_type_url(@fuel_type)
  end

  test "should destroy fuel_type" do
    assert_difference('FuelType.count', -1) do
      delete fuel_type_url(@fuel_type)
    end

    assert_redirected_to fuel_types_url
  end
end
