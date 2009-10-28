class CreateMymessages < ActiveRecord::Migration
  def self.up
    create_table :mymessages do |t|
      t.string :amessage

      t.timestamps
    end
  end

  def self.down
    drop_table :mymessages
  end
end
