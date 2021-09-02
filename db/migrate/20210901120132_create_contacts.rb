class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|

      t.string :last_name,        null: false
      t.string :first_name,        null: false
      t.string :email,        null: false
      t.string :about,        null: false
      t.string :case,        null: false


      t.timestamps
    end
  end
end
