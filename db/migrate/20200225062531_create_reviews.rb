class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text       :comment,            null: false
      t.float      :star,               default: 1
      t.references :restaurant,         null: false, foreign_key: true
      t.references :user,               null: false, foreign_key: true
      


      t.timestamps
    end
  end
end
