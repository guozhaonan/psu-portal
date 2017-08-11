class AddEmbedfieldToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :embed_field, :text
  end
end
