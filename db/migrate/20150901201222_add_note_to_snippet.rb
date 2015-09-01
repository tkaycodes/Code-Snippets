class AddNoteToSnippet < ActiveRecord::Migration
  def change
    add_column :snippets, :notes, :string
  end
end
