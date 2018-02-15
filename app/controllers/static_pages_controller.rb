class StaticPagesController < ApplicationController
  def Home
    if logged_in?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed
    end
  end

  def Help
  end

  def About
  end

  def Contact
  end

  def Signup
  end
end
