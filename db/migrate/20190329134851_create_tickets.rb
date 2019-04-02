class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.references :ticket_type, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
