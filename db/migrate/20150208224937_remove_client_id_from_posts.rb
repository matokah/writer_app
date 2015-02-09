class RemoveClientIdFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :client_id, :integer
  end
end
