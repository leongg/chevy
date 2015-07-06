class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :address
      t.references :workshop, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
