class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :name
      t.string :rut
      t.string :phone
      t.string :address
      t.string :email

      t.timestamps null: false
    end
  end
end
