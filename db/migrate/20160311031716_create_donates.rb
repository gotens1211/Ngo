class CreateDonates < ActiveRecord::Migration
  def change
    create_table :donates do |t|
      t.string :name
      t.float :amount

      t.timestamps null: false
    end
  end
end
