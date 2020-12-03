class ChangeLikes < ActiveRecord::Migration[5.2]
  def change
    remove_index :likes, [:liker_id, :likeable_id]
    add_index :likes, [:liker_id, :likeable_id, :likeable_type], unique: true
  end
end
