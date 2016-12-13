class CreateLodgingfeatures < ActiveRecord::Migration
  def change
    create_table :lodgingfeatures do |t|

      t.string :type

      t.timestamps null: false
    end
  end
end
