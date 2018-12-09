class AddProtocolToWebpage < ActiveRecord::Migration[5.2]
  def change
  	add_column :webpages, :protocol, :string, default: ''
  end
end
