class RenameArticlesTableForeignKey < ActiveRecord::Migration[5.0]
  def change
    rename_column :articles, :user_id, :author_id
    rename_column :revisions, :user_id, :editor_id
  end
end
