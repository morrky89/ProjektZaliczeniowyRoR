class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :title
      t.text :text
      t.references :project, index: true

      t.timestamps null: false
    end
      add_foreign_key :tickets, :projects
  end
end