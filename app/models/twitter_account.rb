class TwitterAccount < ActiveRecord::Base
  belongs_to :user

  # Get twitter accounts I am following from the twitter API
  def query_friends
    httpauth = eval("Twitter::HTTPAuth.new(self.twitter_login,twitter_pass)")
    @base = Twitter::Base.new(httpauth)
    # I get a list of screen_names of who I am following by calling the .friends() method
    @base.friends.map{|f| f.screen_name}
  end
end
