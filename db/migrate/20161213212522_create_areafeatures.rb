class CreateAreafeatures < ActiveRecord::Migration
  def change
    create_table :areafeatures do |t|

      t.string :feature

      t.timestamps null: false
    end
  end
end
