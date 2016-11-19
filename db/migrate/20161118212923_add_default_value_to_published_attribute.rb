class AddDefaultValueToPublishedAttribute < ActiveRecord::Migration[5.0]
  def change
    change_column :articles, :published, :boolean, default: true
  end
end
