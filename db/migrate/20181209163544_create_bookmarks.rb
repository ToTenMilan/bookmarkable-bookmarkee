class CreateBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarks do |t|
      t.string :name
      t.references :webpage, foreign_key: true

      t.timestamps
    end
    add_index :bookmarks, :name, unique: true
  end
end
