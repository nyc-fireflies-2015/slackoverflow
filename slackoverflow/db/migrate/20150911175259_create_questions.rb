class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string  :author_id, null: false
      t.string  :title, null: false
      t.string  :body, null: false
      t.timestamps null: false
    end
  end
end
