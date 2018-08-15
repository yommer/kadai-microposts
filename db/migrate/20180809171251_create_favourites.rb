class CreateFavourites < ActiveRecord::Migration[5.0]
  def change
    create_table :favourites do |t|
      t.references :user, foreign_key: true
      t.references :micropost, foreign_key: { to_table: :users }

      t.timestamps
      
      t.index [:user_id, :micropost_id], unique: true
    end
  end
end