class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name if self.artist
  end

  def artist_name=(aname)
    self.artist = Artist.find_or_create_by(name: aname)
    self.save
  end
end
