class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body, null: false
      t.integer :commenter_id, null: false
      t.boolean :is_answer, default: false
      t.string :commentable_type
      t.integer :commentable_id
      t.timestamps null: false
    end

    add_index :comments, [:commentable_id, :commentable_type]
  end
end
