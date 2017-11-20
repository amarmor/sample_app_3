require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get Home" do
    get '/'
    assert_response :success
  end

  test "should get Help" do
    get '/help'
    assert_response :success
  end

  test "should get About" do
    get '/about'
    assert_response :success
  end

  test "should get Contact" do
    get '/contact'
    assert_response :success
  end

end
