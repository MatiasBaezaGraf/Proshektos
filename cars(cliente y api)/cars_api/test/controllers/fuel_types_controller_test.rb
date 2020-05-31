require 'test_helper'

class FuelTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fuel_type = fuel_types(:one)
  end

  test "should get index" do
    get fuel_types_url, as: :json
    assert_response :success
  end

  test "should create fuel_type" do
    assert_difference('FuelType.count') do
      post fuel_types_url, params: { fuel_type: { name: @fuel_type.name } }, as: :json
    end

    assert_response 201
  end

  test "should show fuel_type" do
    get fuel_type_url(@fuel_type), as: :json
    assert_response :success
  end

  test "should update fuel_type" do
    patch fuel_type_url(@fuel_type), params: { fuel_type: { name: @fuel_type.name } }, as: :json
    assert_response 200
  end

  test "should destroy fuel_type" do
    assert_difference('FuelType.count', -1) do
      delete fuel_type_url(@fuel_type), as: :json
    end

    assert_response 204
  end
end
