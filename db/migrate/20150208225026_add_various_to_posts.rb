class AddVariousToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :client, index: true
    add_foreign_key :posts, :clients
  end
end
