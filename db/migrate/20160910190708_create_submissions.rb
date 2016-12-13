class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|

      t.string :submission_link
      t.string :title
      t.string :location
      t.string :lodging_type
      t.string :bedrooms
      t.string :bathrooms
      t.string :lodging_amenities
      t.string :location_amenities
      t.string :img1
      t.string :img2
      t.string :img3
      t.string :publish, default: 'no'
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end




