require "test_helper"

class Zer0sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zer0 = zer0s(:one)
  end

  test "should get index" do
    get zer0s_url
    assert_response :success
  end

  test "should get new" do
    get new_zer0_url
    assert_response :success
  end

  test "should create zer0" do
    assert_difference("Zer0.count") do
      post zer0s_url, params: { zer0: { title_id: @zer0.title_id } }
    end

    assert_redirected_to zer0_url(Zer0.last)
  end

  test "should show zer0" do
    get zer0_url(@zer0)
    assert_response :success
  end

  test "should get edit" do
    get edit_zer0_url(@zer0)
    assert_response :success
  end

  test "should update zer0" do
    patch zer0_url(@zer0), params: { zer0: { title_id: @zer0.title_id } }
    assert_redirected_to zer0_url(@zer0)
  end

  test "should destroy zer0" do
    assert_difference("Zer0.count", -1) do
      delete zer0_url(@zer0)
    end

    assert_redirected_to zer0s_url
  end
end
