class CreateTags < ActiveRecord::Migration
  def change

    create_table :tags do |t|
      t.string :title

      t.timestamps
    end

    create_table :taggings do |t|
      t.belongs_to :tag, index: true
      t.belongs_to :tagable ,polymorphic: true, index: true

      t.timestamps
    end
  end
end
