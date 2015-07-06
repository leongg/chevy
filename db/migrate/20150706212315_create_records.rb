class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.references :CarFile, index: true, foreign_key: true
      t.date :entrance
      t.string :details

      t.timestamps null: false
    end
  end
end
