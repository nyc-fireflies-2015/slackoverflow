class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body, null: false
      t.integer :commenter_id, null: false
      t.integer :question_id, null: false
      t.integer :parent_comment_id
      t.boolean :is_answer, default: false
      t.string :commentable_type
      t.integer :commentable_id

      t.timestamps null: false
    end

    add_index :comments, :commentable_id
  end
end
