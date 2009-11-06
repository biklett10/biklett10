require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/twitter_accounts/index.html.erb" do
  include TwitterAccountsHelper

  before(:each) do
    assigns[:twitter_accounts] = [
      stub_model(TwitterAccount,
        :twitter_pass => "value for twitter_pass",
        :twitter_email => "value for twitter_email",
        :user_id => 1
      ),
      stub_model(TwitterAccount,
        :twitter_pass => "value for twitter_pass",
        :twitter_email => "value for twitter_email",
        :user_id => 1
      )
    ]
  end

  it "renders a list of twitter_accounts" do
    render
    response.should have_tag("tr>td", "value for twitter_pass".to_s, 2)
    response.should have_tag("tr>td", "value for twitter_email".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
  end
end
