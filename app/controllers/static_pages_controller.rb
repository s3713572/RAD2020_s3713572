class StaticPagesController < ApplicationController
  # <!--learn web development with rails page 125-->
  def home
    @microposts = Micropost.where(created_at:(Time.now-1.month..Time.now))
                      .order(created_at: :desc)
    @users = User.order(created_at: :desc).limit(12)
  end

  def help
  end

  def about
  end

  def contact
  end
end
