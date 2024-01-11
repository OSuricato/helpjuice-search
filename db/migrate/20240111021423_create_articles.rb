class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :year
      t.text :content
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
