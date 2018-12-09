class CreateWebpages < ActiveRecord::Migration[5.2]
  def change
    create_table :webpages do |t|
      t.string :name

      t.timestamps
    end
    add_index :webpages, :name, unique: true
  end
end
