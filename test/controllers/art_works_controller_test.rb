require 'test_helper'

class ArtWorksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get art_works_index_url
    assert_response :success
  end

  test "should get create" do
    get art_works_create_url
    assert_response :success
  end

  test "should get show" do
    get art_works_show_url
    assert_response :success
  end

  test "should get update" do
    get art_works_update_url
    assert_response :success
  end

  test "should get destroy" do
    get art_works_destroy_url
    assert_response :success
  end

end
