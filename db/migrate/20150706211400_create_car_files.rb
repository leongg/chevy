class CreateCarFiles < ActiveRecord::Migration
  def change
    create_table :car_files do |t|
      t.references :office, index: true, foreign_key: true
      t.references :car, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
