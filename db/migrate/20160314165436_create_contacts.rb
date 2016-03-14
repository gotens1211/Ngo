class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
    	t.string :name
    	t.string :email_id
    	t.integer :phone , limit:10
    	t.string :subject
    	t.text :requirement
      t.timestamps null: false
    end
  end
end
