require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/twitter_accounts/new.html.erb" do
  include TwitterAccountsHelper

  before(:each) do
    assigns[:twitter_account] = stub_model(TwitterAccount,
      :new_record? => true,
      :twitter_pass => "value for twitter_pass",
      :twitter_email => "value for twitter_email",
      :user_id => 1
    )
  end

  it "renders new twitter_account form" do
    render

    response.should have_tag("form[action=?][method=post]", twitter_accounts_path) do
      with_tag("input#twitter_account_twitter_pass[name=?]", "twitter_account[twitter_pass]")
      with_tag("input#twitter_account_twitter_email[name=?]", "twitter_account[twitter_email]")
      with_tag("input#twitter_account_user_id[name=?]", "twitter_account[user_id]")
    end
  end
end
