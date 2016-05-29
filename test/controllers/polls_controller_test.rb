require 'test_helper'

class PollsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get polls_show_url
    assert_response :success
  end

end
