class CreateAssets < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image_url
      t.belongs_to :imageable, polymorphic: true, index: true

      t.timestamps
    end

    create_table :reviews do |t|
      t.belongs_to :user
      t.text :content
      t.integer :rating
      t.belongs_to :reviewable, polymorphic: true, index: true

      t.timestamps
    end

    create_table :phones do |t|
      t.string :number
      t.string :number_type
      t.belongs_to :phoneable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
