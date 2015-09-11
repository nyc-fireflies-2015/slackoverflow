class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer   :value, null: false
      t.integer   :voter_id, null: false
      t.string    :voteable_type
      t.integer   :voteable_id
      t.timestamps null: false
    end

    add_index :votes, :voteable_id
  end
end
