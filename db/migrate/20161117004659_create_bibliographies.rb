class CreateBibliographies < ActiveRecord::Migration[5.0]
  def change
    create_table :bibliographies do |t|
      t.references :article, foreign_key: true
      t.string :link_url
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
