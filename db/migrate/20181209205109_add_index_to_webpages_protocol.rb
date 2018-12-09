class AddIndexToWebpagesProtocol < ActiveRecord::Migration[5.2]
  def change
  	add_index :webpages, :protocol
  end
end
