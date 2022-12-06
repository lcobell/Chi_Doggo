require "application_system_test_case"

class WalksTest < ApplicationSystemTestCase
  setup do
    @walk = walks(:one)
  end

  test "visiting the index" do
    visit walks_url
    assert_selector "h1", text: "Walks"
  end

  test "creating a Walk" do
    visit walks_url
    click_on "New Walk"

    check "Complete" if @walk.complete
    fill_in "Dog", with: @walk.dog_id
    fill_in "Walker", with: @walk.walker_id
    click_on "Create Walk"

    assert_text "Walk was successfully created"
    click_on "Back"
  end

  test "updating a Walk" do
    visit walks_url
    click_on "Edit", match: :first

    check "Complete" if @walk.complete
    fill_in "Dog", with: @walk.dog_id
    fill_in "Walker", with: @walk.walker_id
    click_on "Update Walk"

    assert_text "Walk was successfully updated"
    click_on "Back"
  end

  test "destroying a Walk" do
    visit walks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Walk was successfully destroyed"
  end
end
