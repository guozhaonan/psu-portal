class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :tagline
      t.string :url
      t.text :description
      t.boolean :featured

      t.timestamps
    end
  end
end
