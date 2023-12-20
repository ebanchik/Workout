require "test_helper"

class Upper1ControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/exercises/upper1.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Product.count, data.length
  end
end
