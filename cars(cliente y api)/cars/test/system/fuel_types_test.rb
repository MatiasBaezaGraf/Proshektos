require "application_system_test_case"

class FuelTypesTest < ApplicationSystemTestCase
  setup do
    @fuel_type = fuel_types(:one)
  end

  test "visiting the index" do
    visit fuel_types_url
    assert_selector "h1", text: "Fuel Types"
  end

  test "creating a Fuel type" do
    visit fuel_types_url
    click_on "New Fuel Type"

    fill_in "Name", with: @fuel_type.name
    click_on "Create Fuel type"

    assert_text "Fuel type was successfully created"
    click_on "Back"
  end

  test "updating a Fuel type" do
    visit fuel_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @fuel_type.name
    click_on "Update Fuel type"

    assert_text "Fuel type was successfully updated"
    click_on "Back"
  end

  test "destroying a Fuel type" do
    visit fuel_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fuel type was successfully destroyed"
  end
end
