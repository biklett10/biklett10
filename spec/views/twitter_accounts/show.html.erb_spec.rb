require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/twitter_accounts/show.html.erb" do
  include TwitterAccountsHelper
  before(:each) do
    assigns[:twitter_account] = @twitter_account = stub_model(TwitterAccount,
      :twitter_pass => "value for twitter_pass",
      :twitter_email => "value for twitter_email",
      :user_id => 1
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ twitter_pass/)
    response.should have_text(/value\ for\ twitter_email/)
    response.should have_text(/1/)
  end
end
