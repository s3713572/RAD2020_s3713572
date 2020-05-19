class StaticPagesController < ApplicationController
  # <!--learn web development with rails page 125-->
  def home
    @microposts = Micropost.where(created_at:(Time.now-1.month..Time.now))
                      .order(created_at: :desc)
    @users = User.order(created_at: :desc).limit(12)
    @topics= ['A.I.','V.R.','RMIT','Game','Rails','Go','Web','M.L.','Joke','Reat','Vue','Node','iOS','AWS']
    @top_posts = Micropost.order(view_count: :desc).limit(5)
    @links = {'Alex':'',
              'RMIT':'https://www.rmit.edu.au/',
              'Andy':'',
              'Rails':'https://rubyonrails.org/',
              'Docs':'https://guides.rubyonrails.org/'
    }
  end

  def help
  end

  def about
  end

  def contact
  end
end
