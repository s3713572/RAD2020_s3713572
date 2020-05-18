class StaticPagesController < ApplicationController
  # <!--learn web development with rails page 125-->
  def home
    @micropost = current_user.microposts.build if logged_in?
    if logged_in?
      @micropost=current_user.microposts.build
      @feed_items=current_user.feed
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
