require "test_helper"

class ExercisesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/exercises.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Exercise.count, data.length
  end

  test "create" do
    assert_difference "Exercise.count", 1 do
      post "/exercises.json", params: { name: "lake", width: 800, height: 600 }
      assert_response 200
    end
  end
end
