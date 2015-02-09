class RemoveClientFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :client, :string
  end
end
