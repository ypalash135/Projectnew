class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :name
      t.text :email
      t.integer :age  

      t.timestamps
    end
  end
end
