class CreateRelations < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.belongs_to :user, index: true
      t.belongs_to :likeable,polymorphic: true, index: true

      t.timestamps
    end
    add_index :likes, [:user_id, :likeable_id,:likeable_type], unique: true
  
    create_table :relationships do |t|
      t.references :follower, index: true
      t.references :followed, index: true

      t.timestamps
    end
    add_index :relationships, [:follower_id, :followed_id], unique: true
 
    create_table :attendings do |t|
      t.belongs_to :user, index: true
      t.references :event, index: true

      t.timestamps
    end
    add_index :attendings, [:user_id, :event_id], unique: true
  end
end
