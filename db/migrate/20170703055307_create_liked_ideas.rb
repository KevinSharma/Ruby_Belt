class CreateLikedIdeas < ActiveRecord::Migration
  def up
    create_table :liked_ideas do |t|
      t.integer 'user_id'
      t.integer 'post_id'
      t.references :user, index: true, foreign_key: true
      t.references :ideas, index: true, foreign_key: true

      t.timestamps null: false
    end

    add_index('liked_ideas', ['user_id', 'post_id'])
  end

  def down
    drop_table :Likes
  end
end
