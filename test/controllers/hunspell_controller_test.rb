require 'test_helper'

class HunspellControllerTest < ActionDispatch::IntegrationTest
  test "should get test" do
    get hunspell_test_url
    assert_response :success
  end

end
