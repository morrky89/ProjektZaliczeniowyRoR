class AddUsersToTicket < ActiveRecord::Migration
  def self.up
    create_table :tickets_users, :id => false do |t|
      t.integer :ticket_id
      t.integer :user_id
    end
  end

  def self.down
    drop_table :tickets_users
  end
end
