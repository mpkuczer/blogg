class ChangeTweeetToPost < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :tweeet, :post
  end
end
