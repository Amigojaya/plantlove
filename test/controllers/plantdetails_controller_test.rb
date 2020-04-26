require 'test_helper'

class PlantdetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get plantdetails_index_url
    assert_response :success
  end

  test "should get new" do
    get plantdetails_new_url
    assert_response :success
  end

  test "should get edit" do
    get plantdetails_edit_url
    assert_response :success
  end

  test "should get show" do
    get plantdetails_show_url
    assert_response :success
  end

end
