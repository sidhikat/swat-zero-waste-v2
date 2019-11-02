require 'test_helper'

class OurstoryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ourstory_index_url
    assert_response :success
  end

end
