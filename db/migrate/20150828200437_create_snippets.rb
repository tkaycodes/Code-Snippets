class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.string :title
      t.text :body
      t.references :language, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
