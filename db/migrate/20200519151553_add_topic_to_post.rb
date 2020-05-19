class AddTopicToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :microposts, :topic, :string
  end
end
