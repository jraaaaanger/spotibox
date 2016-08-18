class AddPlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :name, null: false
      t.string :theme, null: false
    end
  end
end
