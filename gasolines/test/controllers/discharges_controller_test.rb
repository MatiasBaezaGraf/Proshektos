require 'test_helper'

class DischargesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @discharge = discharges(:one)
  end

  test "should get index" do
    get discharges_url
    assert_response :success
  end

  test "should get new" do
    get new_discharge_url
    assert_response :success
  end

  test "should create discharge" do
    assert_difference('Discharge.count') do
      post discharges_url, params: { discharge: { date: @discharge.date, liters: @discharge.liters } }
    end

    assert_redirected_to discharge_url(Discharge.last)
  end

  test "should show discharge" do
    get discharge_url(@discharge)
    assert_response :success
  end

  test "should get edit" do
    get edit_discharge_url(@discharge)
    assert_response :success
  end

  test "should update discharge" do
    patch discharge_url(@discharge), params: { discharge: { date: @discharge.date, liters: @discharge.liters } }
    assert_redirected_to discharge_url(@discharge)
  end

  test "should destroy discharge" do
    assert_difference('Discharge.count', -1) do
      delete discharge_url(@discharge)
    end

    assert_redirected_to discharges_url
  end
end
