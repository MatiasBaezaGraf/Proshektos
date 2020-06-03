require "application_system_test_case"

class CarsTest < ApplicationSystemTestCase
  setup do
    @car = cars(:one)
  end

  test "visiting the index" do
    visit cars_url
    assert_selector "h1", text: "Cars"
  end

  test "creating a Car" do
    visit cars_url
    click_on "New Car"

    fill_in "Brand", with: @car.brand
    fill_in "Fuel type", with: @car.fuel_type
    fill_in "Kilometers last", with: @car.kilometers_last
    fill_in "Model", with: @car.model
    fill_in "Patent", with: @car.patent
    fill_in "Price day", with: @car.price_day
    fill_in "Service", with: @car.service
    click_on "Create Car"

    assert_text "Car was successfully created"
    click_on "Back"
  end

  test "updating a Car" do
    visit cars_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @car.brand
    fill_in "Fuel type", with: @car.fuel_type
    fill_in "Kilometers last", with: @car.kilometers_last
    fill_in "Model", with: @car.model
    fill_in "Patent", with: @car.patent
    fill_in "Price day", with: @car.price_day
    fill_in "Service", with: @car.service
    click_on "Update Car"

    assert_text "Car was successfully updated"
    click_on "Back"
  end

  test "destroying a Car" do
    visit cars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Car was successfully destroyed"
  end
end
