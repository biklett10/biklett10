class CreateTwitterAccounts < ActiveRecord::Migration
  def self.up
    create_table :twitter_accounts do |t|
      t.string :twitter_login
      t.string :twitter_pass
      t.string :twitter_email
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :twitter_accounts
  end
end
