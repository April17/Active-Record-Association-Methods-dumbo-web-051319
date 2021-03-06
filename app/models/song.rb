class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    Genre.find_by(id: self.genre_id).name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    Artist.create(name: "Drake")
    self.artist_id = Artist.find_by(name: "Drake").id
    self.save
    Artist.find_by(id: self.artist_id)
  end
end
