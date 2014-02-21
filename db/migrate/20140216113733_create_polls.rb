class CreatePolls < ActiveRecord::Migration
  def self.up
    
    # Question poll logic
    create_table :polls do |t|
      t.string  :question
      t.boolean :active, :default => false
      t.date    :ends_at

      t.timestamps
    end

    create_table :options do |t|
      t.belongs_to :poll, index: true
      t.string :text

      t.timestamps
    end
 
    # Answer logic
    create_table :answers do |t|
      t.belongs_to    :user, index: true
      t.references    :option, index: true
      t.references    :poll, index: true

      t.timestamps
    end

  end

  def self.down
    drop_table :polls
    drop_table :options
    drop_table :answers
  end
end
