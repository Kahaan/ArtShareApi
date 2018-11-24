class RemoveDetailsFromArtworks < ActiveRecord::Migration[5.2]
  def change
    remove_column :artworks, :title, :string
    remove_column :artworks, :image_url, :string
    remove_column :artworks, :artist_id, :integer
  end
end
