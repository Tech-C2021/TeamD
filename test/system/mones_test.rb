require "application_system_test_case"

class MonesTest < ApplicationSystemTestCase
  setup do
    @mone = mones(:one)
  end

  test "visiting the index" do
    visit mones_url
    assert_selector "h1", text: "Mones"
  end

  test "should create mone" do
    visit mones_url
    click_on "New mone"

    fill_in "Title", with: @mone.title
    click_on "Create Mone"

    assert_text "Mone was successfully created"
    click_on "Back"
  end

  test "should update Mone" do
    visit mone_url(@mone)
    click_on "Edit this mone", match: :first

    fill_in "Title", with: @mone.title
    click_on "Update Mone"

    assert_text "Mone was successfully updated"
    click_on "Back"
  end

  test "should destroy Mone" do
    visit mone_url(@mone)
    click_on "Destroy this mone", match: :first

    assert_text "Mone was successfully destroyed"
  end
end
