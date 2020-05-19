class AddViewCountsToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :microposts, :view_count,:integer
  end
end
