class CreatePolls < ActiveRecord::Migration
  def change
    
    # Question poll logic
    create_table :polls do |t|
      t.string  :question
      t.boolean :active, :default => false
      t.integer :votes_count, :default => 0
      t.date    :ends_at

      t.timestamps
    end

    create_table :poll_options do |t|
      t.belongs_to :poll, index: true
      t.string :text
      t.integer :votes_count, :default => 0

      t.timestamps
    end
 
    # Answer logic
    create_table :poll_votes do |t|
      t.belongs_to    :user, index: true
      t.references    :poll, index: true
      t.references    :poll_option, index: true

      t.timestamps
    end
  end
end
