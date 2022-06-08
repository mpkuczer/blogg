class ChangeTweeetsToPosts < ActiveRecord::Migration[7.0]
  def change
    rename_table :tweeets, :posts
  end
end
