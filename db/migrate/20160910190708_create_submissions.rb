class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|

      t.string :submission_link
      t.string :title
      t.string :location
      t.string :lodging_type
      t.integer :bedrooms
      t.integer :bathrooms
      t.string :img1
      t.string :img2
      t.string :img3
      t.string :publish, default: 'no'

      t.timestamps null: false
    end
  end
end




