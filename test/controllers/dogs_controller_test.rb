require "test_helper"

class DogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dog = dogs(:one)
  end

  test "should get index" do
    get dogs_url
    assert_response :success
  end

  test "should get new" do
    get new_dog_url
    assert_response :success
  end

  test "should create dog" do
    assert_difference('Dog.count') do
      post dogs_url, params: { dog: { about: @dog.about, friday_afternoon: @dog.friday_afternoon, friday_morning: @dog.friday_morning, friday_night: @dog.friday_night, image: @dog.image, monday_afternoon: @dog.monday_afternoon, monday_morning: @dog.monday_morning, monday_night: @dog.monday_night, name: @dog.name, neighborhood: @dog.neighborhood, owner_id: @dog.owner_id, saturday_afternoon: @dog.saturday_afternoon, saturday_morning: @dog.saturday_morning, saturday_night: @dog.saturday_night, size: @dog.size, sunday_afternoon: @dog.sunday_afternoon, sunday_morning: @dog.sunday_morning, sunday_night: @dog.sunday_night, thursday_afternoon: @dog.thursday_afternoon, thursday_morning: @dog.thursday_morning, thursday_night: @dog.thursday_night, tuesday_afternoon: @dog.tuesday_afternoon, tuesday_morning: @dog.tuesday_morning, tuesday_night: @dog.tuesday_night, walks_count: @dog.walks_count, wednesday_afternoon: @dog.wednesday_afternoon, wednesday_morning: @dog.wednesday_morning, wednesday_night: @dog.wednesday_night } }
    end

    assert_redirected_to dog_url(Dog.last)
  end

  test "should show dog" do
    get dog_url(@dog)
    assert_response :success
  end

  test "should get edit" do
    get edit_dog_url(@dog)
    assert_response :success
  end

  test "should update dog" do
    patch dog_url(@dog), params: { dog: { about: @dog.about, friday_afternoon: @dog.friday_afternoon, friday_morning: @dog.friday_morning, friday_night: @dog.friday_night, image: @dog.image, monday_afternoon: @dog.monday_afternoon, monday_morning: @dog.monday_morning, monday_night: @dog.monday_night, name: @dog.name, neighborhood: @dog.neighborhood, owner_id: @dog.owner_id, saturday_afternoon: @dog.saturday_afternoon, saturday_morning: @dog.saturday_morning, saturday_night: @dog.saturday_night, size: @dog.size, sunday_afternoon: @dog.sunday_afternoon, sunday_morning: @dog.sunday_morning, sunday_night: @dog.sunday_night, thursday_afternoon: @dog.thursday_afternoon, thursday_morning: @dog.thursday_morning, thursday_night: @dog.thursday_night, tuesday_afternoon: @dog.tuesday_afternoon, tuesday_morning: @dog.tuesday_morning, tuesday_night: @dog.tuesday_night, walks_count: @dog.walks_count, wednesday_afternoon: @dog.wednesday_afternoon, wednesday_morning: @dog.wednesday_morning, wednesday_night: @dog.wednesday_night } }
    assert_redirected_to dog_url(@dog)
  end

  test "should destroy dog" do
    assert_difference('Dog.count', -1) do
      delete dog_url(@dog)
    end

    assert_redirected_to dogs_url
  end
end
