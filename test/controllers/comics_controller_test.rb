require 'test_helper'

class ComicsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get comics_new_url
    assert_response :success
  end

end
