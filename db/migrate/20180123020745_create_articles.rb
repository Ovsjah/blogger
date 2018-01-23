class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title  # calls methods on t to create columns in articles table
      t.text :body
      
      t.timestamps
    end
  end
end
