require "application_system_test_case"

class DogsTest < ApplicationSystemTestCase
  setup do
    @dog = dogs(:one)
  end

  test "visiting the index" do
    visit dogs_url
    assert_selector "h1", text: "Dogs"
  end

  test "creating a Dog" do
    visit dogs_url
    click_on "New Dog"

    fill_in "About", with: @dog.about
    check "Friday afternoon" if @dog.friday_afternoon
    check "Friday morning" if @dog.friday_morning
    check "Friday night" if @dog.friday_night
    fill_in "Image", with: @dog.image
    check "Monday afternoon" if @dog.monday_afternoon
    check "Monday morning" if @dog.monday_morning
    check "Monday night" if @dog.monday_night
    fill_in "Name", with: @dog.name
    fill_in "Neighborhood", with: @dog.neighborhood
    fill_in "Owner", with: @dog.owner_id
    check "Saturday afternoon" if @dog.saturday_afternoon
    check "Saturday morning" if @dog.saturday_morning
    check "Saturday night" if @dog.saturday_night
    fill_in "Size", with: @dog.size
    check "Sunday afternoon" if @dog.sunday_afternoon
    check "Sunday morning" if @dog.sunday_morning
    check "Sunday night" if @dog.sunday_night
    check "Thursday afternoon" if @dog.thursday_afternoon
    check "Thursday morning" if @dog.thursday_morning
    check "Thursday night" if @dog.thursday_night
    check "Tuesday afternoon" if @dog.tuesday_afternoon
    check "Tuesday morning" if @dog.tuesday_morning
    check "Tuesday night" if @dog.tuesday_night
    fill_in "Walks count", with: @dog.walks_count
    check "Wednesday afternoon" if @dog.wednesday_afternoon
    check "Wednesday morning" if @dog.wednesday_morning
    check "Wednesday night" if @dog.wednesday_night
    click_on "Create Dog"

    assert_text "Dog was successfully created"
    click_on "Back"
  end

  test "updating a Dog" do
    visit dogs_url
    click_on "Edit", match: :first

    fill_in "About", with: @dog.about
    check "Friday afternoon" if @dog.friday_afternoon
    check "Friday morning" if @dog.friday_morning
    check "Friday night" if @dog.friday_night
    fill_in "Image", with: @dog.image
    check "Monday afternoon" if @dog.monday_afternoon
    check "Monday morning" if @dog.monday_morning
    check "Monday night" if @dog.monday_night
    fill_in "Name", with: @dog.name
    fill_in "Neighborhood", with: @dog.neighborhood
    fill_in "Owner", with: @dog.owner_id
    check "Saturday afternoon" if @dog.saturday_afternoon
    check "Saturday morning" if @dog.saturday_morning
    check "Saturday night" if @dog.saturday_night
    fill_in "Size", with: @dog.size
    check "Sunday afternoon" if @dog.sunday_afternoon
    check "Sunday morning" if @dog.sunday_morning
    check "Sunday night" if @dog.sunday_night
    check "Thursday afternoon" if @dog.thursday_afternoon
    check "Thursday morning" if @dog.thursday_morning
    check "Thursday night" if @dog.thursday_night
    check "Tuesday afternoon" if @dog.tuesday_afternoon
    check "Tuesday morning" if @dog.tuesday_morning
    check "Tuesday night" if @dog.tuesday_night
    fill_in "Walks count", with: @dog.walks_count
    check "Wednesday afternoon" if @dog.wednesday_afternoon
    check "Wednesday morning" if @dog.wednesday_morning
    check "Wednesday night" if @dog.wednesday_night
    click_on "Update Dog"

    assert_text "Dog was successfully updated"
    click_on "Back"
  end

  test "destroying a Dog" do
    visit dogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dog was successfully destroyed"
  end
end
