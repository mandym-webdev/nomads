class CreateLodgingtypes < ActiveRecord::Migration
  def change
    create_table :lodgingtypes do |t|

      t.string :lodging

      t.timestamps null: false
    end
  end
end
