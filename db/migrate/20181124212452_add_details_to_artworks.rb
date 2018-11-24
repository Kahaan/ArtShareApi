class AddDetailsToArtworks < ActiveRecord::Migration[5.2]
  def change
    add_column :artworks, :title, :string, null: false
    add_column :artworks, :image_url, :string, null: false
    add_column :artworks, :artist_id, :integer, null: false
  end
end
