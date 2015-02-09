class AddPeriodToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :period, :string
  end
end
