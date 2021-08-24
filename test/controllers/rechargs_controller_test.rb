require "test_helper"

class RechargsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recharg = rechargs(:one)
  end

  test "should get index" do
    get rechargs_url, as: :json
    assert_response :success
  end

  test "should create recharg" do
    assert_difference('Recharg.count') do
      post rechargs_url, params: { recharg: { amount: @recharg.amount, phone_id: @recharg.phone_id } }, as: :json
    end

    assert_response 201
  end

  test "should show recharg" do
    get recharg_url(@recharg), as: :json
    assert_response :success
  end

  test "should update recharg" do
    patch recharg_url(@recharg), params: { recharg: { amount: @recharg.amount, phone_id: @recharg.phone_id } }, as: :json
    assert_response 200
  end

  test "should destroy recharg" do
    assert_difference('Recharg.count', -1) do
      delete recharg_url(@recharg), as: :json
    end

    assert_response 204
  end
end
