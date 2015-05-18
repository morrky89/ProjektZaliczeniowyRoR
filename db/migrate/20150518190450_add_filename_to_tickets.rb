class AddFilenameToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :filename, :string
  end
end
