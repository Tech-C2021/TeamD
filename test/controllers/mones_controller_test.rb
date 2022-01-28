require "test_helper"

class MonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mone = mones(:one)
  end

  test "should get index" do
    get mones_url
    assert_response :success
  end

  test "should get new" do
    get new_mone_url
    assert_response :success
  end

  test "should create mone" do
    assert_difference("Mone.count") do
      post mones_url, params: { mone: { title: @mone.title } }
    end

    assert_redirected_to mone_url(Mone.last)
  end

  test "should show mone" do
    get mone_url(@mone)
    assert_response :success
  end

  test "should get edit" do
    get edit_mone_url(@mone)
    assert_response :success
  end

  test "should update mone" do
    patch mone_url(@mone), params: { mone: { title: @mone.title } }
    assert_redirected_to mone_url(@mone)
  end

  test "should destroy mone" do
    assert_difference("Mone.count", -1) do
      delete mone_url(@mone)
    end

    assert_redirected_to mones_url
  end
end
