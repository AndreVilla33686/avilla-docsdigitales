require 'test_helper'

class SlashesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @slash = slashes(:one)
  end

  test "should get index" do
    get slashes_url
    assert_response :success
  end

  test "should get new" do
    get new_slash_url
    assert_response :success
  end

  test "should create slash" do
    assert_difference('Slash.count') do
      post slashes_url, params: { slash: { address: @slash.address, name: @slash.name } }
    end

    assert_redirected_to slash_url(Slash.last)
  end

  test "should show slash" do
    get slash_url(@slash)
    assert_response :success
  end

  test "should get edit" do
    get edit_slash_url(@slash)
    assert_response :success
  end

  test "should update slash" do
    patch slash_url(@slash), params: { slash: { address: @slash.address, name: @slash.name } }
    assert_redirected_to slash_url(@slash)
  end

  test "should destroy slash" do
    assert_difference('Slash.count', -1) do
      delete slash_url(@slash)
    end

    assert_redirected_to slashes_url
  end
end
