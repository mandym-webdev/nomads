class CreateLodgingfeatures < ActiveRecord::Migration
  def change
    create_table :lodgingfeatures do |t|

      t.string :feature

      t.timestamps null: false
    end
  end
end
