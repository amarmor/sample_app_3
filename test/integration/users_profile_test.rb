require 'test_helper'

class UsersProfileTest < ActionDispatch::IntegrationTest
  include ApplicationHelper

  def setup
    @user = users(:michael)
  end

  test "profile display" do
    get user_path(@user)
    assert_template 'users/show'
    assert_match @user.microposts.count.to_s, response.body
    @user.microposts.each do |micropost|
      assert_match micropost.content, response.body
    end
  end
end
