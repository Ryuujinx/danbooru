class RemoveUpScoreFromPosts < ActiveRecord::Migration
  def up
    execute "set statement_timeout = 0"
    remove_column :posts, :up_score
    remove_column :posts, :down_score
  end

  def down
  end
end