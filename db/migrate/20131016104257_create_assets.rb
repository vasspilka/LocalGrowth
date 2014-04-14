class CreateAssets < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.attachment :image
      t.belongs_to :imageable, polymorphic: true, index: true

      t.timestamps
    end


    create_table :phones do |t|
      t.string :number
      t.string :number_type
      t.belongs_to :phoneable, polymorphic: true, index: true

      t.timestamps
    end

    create_table :locations do |t|
      t.string :address
      t.belongs_to :geocoded, polymorphic: true, index: true
      t.float :latitude
      t.float :longitude

      t.timestamps
    end

    create_table :reviews do |t|
      t.belongs_to :user
      t.boolean  :expert, :default => false
      t.text :content
      t.integer :rating
      t.belongs_to :reviewable, polymorphic: true, index: true

      t.timestamps
    end


    create_table :tags do |t|
      t.string :title
      t.timestamps
    end

    create_table :taggings do |t|
      t.belongs_to :tag
      t.belongs_to :tagable ,polymorphic: true, index: true
      t.timestamps
    end    
  end
end
