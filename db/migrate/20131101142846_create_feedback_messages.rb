class CreateFeedbackMessages < ActiveRecord::Migration
  def change
    create_table :feedback_messages do |t|
      t.belongs_to :user
      t.string :name
      t.string :email
      t.string :subject
      t.text :body

      t.timestamps
    end
  end
end
