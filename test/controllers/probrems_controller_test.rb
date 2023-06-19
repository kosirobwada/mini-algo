require "test_helper"

class ProbremsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get probrems_index_url
    assert_response :success
  end
end
