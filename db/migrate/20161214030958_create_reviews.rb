class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :comment, null: false
      t.integer :price
      t.string :currency
      t.integer :duration
      t.string :duration_type
      t.integer :stay_month
      t.integer :stay_year
      t.boolean :discount
      t.string :discount_amount
      t.integer :download
      t.integer :upload
      t.string :speedtest
      t.boolean :consistent
      t.boolean :return
      t.integer :user_id
      t.integer :submission_id

      # things to 1-5 rate
      t.integer :rating
      t.integer :kitchen
      t.integer :lodging_amenities
      t.integer :bed
      t.integer :workspace
      t.integer :value
      t.integer :internet
      t.integer :area_amenities
      t.integer :landlord
      t.integer :safety

      t.timestamps null: false
    end
  end
end
