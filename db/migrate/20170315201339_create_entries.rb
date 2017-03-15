class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.string :tag_name
      t.text :content
      t.references :page, foreign_key: true

      t.timestamps
    end
  end
end
