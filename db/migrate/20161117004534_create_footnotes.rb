class CreateFootnotes < ActiveRecord::Migration[5.0]
  def change
    create_table :footnotes do |t|
      t.references :article, foreign_key: true
      t.text :text
      t.string :url

      t.timestamps
    end
  end
end
