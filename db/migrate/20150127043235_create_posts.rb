class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :client
      t.text :title
      t.date :submission_date

      t.timestamps
    end
  end
end
