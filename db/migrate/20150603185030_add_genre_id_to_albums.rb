class AddGenreIdToAlbums < ActiveRecord::Migration
  def change
    change_table :albums do |t|
      t.belongs_to :genre
      t.remove "genre"
    end
  end
end
