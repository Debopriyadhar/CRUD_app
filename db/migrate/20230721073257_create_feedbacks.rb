class CreateFeedbacks < ActiveRecord::Migration[7.0]
  def change
    create_table :feedbacks do |t|
      t.string :commenter
      t.text :body
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
