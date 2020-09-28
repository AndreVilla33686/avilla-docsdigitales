require "application_system_test_case"

class SlashesTest < ApplicationSystemTestCase
  setup do
    @slash = slashes(:one)
  end

  test "visiting the index" do
    visit slashes_url
    assert_selector "h1", text: "Slashes"
  end

  test "creating a Slash" do
    visit slashes_url
    click_on "New Slash"

    fill_in "Address", with: @slash.address
    fill_in "Name", with: @slash.name
    click_on "Create Slash"

    assert_text "Slash was successfully created"
    click_on "Back"
  end

  test "updating a Slash" do
    visit slashes_url
    click_on "Edit", match: :first

    fill_in "Address", with: @slash.address
    fill_in "Name", with: @slash.name
    click_on "Update Slash"

    assert_text "Slash was successfully updated"
    click_on "Back"
  end

  test "destroying a Slash" do
    visit slashes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Slash was successfully destroyed"
  end
end
