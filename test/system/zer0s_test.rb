require "application_system_test_case"

class Zer0sTest < ApplicationSystemTestCase
  setup do
    @zer0 = zer0s(:one)
  end

  test "visiting the index" do
    visit zer0s_url
    assert_selector "h1", text: "Zer0s"
  end

  test "should create zer0" do
    visit zer0s_url
    click_on "New zer0"

    fill_in "Title", with: @zer0.title_id
    click_on "Create Zer0"

    assert_text "Zer0 was successfully created"
    click_on "Back"
  end

  test "should update Zer0" do
    visit zer0_url(@zer0)
    click_on "Edit this zer0", match: :first

    fill_in "Title", with: @zer0.title_id
    click_on "Update Zer0"

    assert_text "Zer0 was successfully updated"
    click_on "Back"
  end

  test "should destroy Zer0" do
    visit zer0_url(@zer0)
    click_on "Destroy this zer0", match: :first

    assert_text "Zer0 was successfully destroyed"
  end
end
