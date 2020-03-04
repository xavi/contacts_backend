class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.string :email, :null => false
      t.string :phone, :null => false

      t.timestamps
    end
    add_index :contacts, :email, unique: true
    add_index :contacts, :updated_at
  end
end
