class AddPublishedAtToPost < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :publishedAt, :string
  end
end
