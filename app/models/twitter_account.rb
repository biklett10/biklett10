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

  # Call twitter API to gain access to acct details like bio
  def query_detail(screen_name)
    twitter_base
    # Return an AR-like-object with methods:
    # followers_count
    # screen_name
    # name
    # description
    # location
    # url
    @base.friends.each{ |friend| return(friend) if friend.screen_name == screen_name }
  end # query_detail

end # class
