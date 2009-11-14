class TwitterAccount < ActiveRecord::Base
  belongs_to :user

  # get connected to twitter API
  def twitter_base
    httpauth = eval("Twitter::HTTPAuth.new(self.twitter_login,twitter_pass)")
    @base = Twitter::Base.new(httpauth)
  end

  # Get twitter accounts I am following from the twitter API
  def query_friends
    twitter_base
    # I get a list of screen_names of who I am following by calling the .friends() method
    @base.friends.map{|f| f.screen_name}
  end # query_friends

  # Get a list of my followers
  def query_followers
    twitter_base
    # I get a list of screen_names 
    @base.followers.map{|f| f.screen_name}
  end # query_followers

  # Expose @base to controller
  def get_base(screen_name)
    twitter_base
  end # def get_base

end # class
