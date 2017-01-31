	class Donates < ActiveRecord::Migration
  def change
  	create_table :donates do |t|
      t.string :name
      t.string :email_id
      t.integer :phone, limit: 10
      t.float :amount
      t.text :reason

      t.timestamps null: false
  end
end
end
