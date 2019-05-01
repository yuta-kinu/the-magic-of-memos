class AddContentToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :content_2, :text
    add_column :posts, :content_3, :text
  end
end
