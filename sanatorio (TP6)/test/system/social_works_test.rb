require "application_system_test_case"

class SocialWorksTest < ApplicationSystemTestCase
  setup do
    @social_work = social_works(:one)
  end

  test "visiting the index" do
    visit social_works_url
    assert_selector "h1", text: "Social Works"
  end

  test "creating a Social work" do
    visit social_works_url
    click_on "New Social Work"

    fill_in "Discount", with: @social_work.discount
    fill_in "Name", with: @social_work.name
    click_on "Create Social work"

    assert_text "Social work was successfully created"
    click_on "Back"
  end

  test "updating a Social work" do
    visit social_works_url
    click_on "Edit", match: :first

    fill_in "Discount", with: @social_work.discount
    fill_in "Name", with: @social_work.name
    click_on "Update Social work"

    assert_text "Social work was successfully updated"
    click_on "Back"
  end

  test "destroying a Social work" do
    visit social_works_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Social work was successfully destroyed"
  end
end
