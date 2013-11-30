class CreateAttendings < ActiveRecord::Migration
  def change
    create_table :attendings do |t|
      t.belongs_to :user, index: true
      t.references :event, index: true

      t.timestamps
    end
    add_index :attendings, [:user_id, :event_id], unique: true
  end
end
