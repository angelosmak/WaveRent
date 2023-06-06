require "test_helper"

class GearsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get gears_new_url
    assert_response :success
  end

  test "should get index" do
    get gears_index_url
    assert_response :success
  end

  test "should get show" do
    get gears_show_url
    assert_response :success
  end

  test "should get create" do
    get gears_create_url
    assert_response :success
  end

  test "should get destroy" do
    get gears_destroy_url
    assert_response :success
  end

  test "should get update" do
    get gears_update_url
    assert_response :success
  end

  test "should get edit" do
    get gears_edit_url
    assert_response :success
  end
end
