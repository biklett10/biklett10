require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/twitter_accounts/edit.html.erb" do
  include TwitterAccountsHelper

  before(:each) do
    assigns[:twitter_account] = @twitter_account = stub_model(TwitterAccount,
      :new_record? => false,
      :twitter_pass => "value for twitter_pass",
      :twitter_email => "value for twitter_email",
      :user_id => 1
    )
  end

  it "renders the edit twitter_account form" do
    render

    response.should have_tag("form[action=#{twitter_account_path(@twitter_account)}][method=post]") do
      with_tag('input#twitter_account_twitter_pass[name=?]', "twitter_account[twitter_pass]")
      with_tag('input#twitter_account_twitter_email[name=?]', "twitter_account[twitter_email]")
      with_tag('input#twitter_account_user_id[name=?]', "twitter_account[user_id]")
    end
  end
end
