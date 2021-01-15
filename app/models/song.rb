class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes
 
  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

  def genre_id=(name)
    self.genre = Genre.find_by(name: name)
  end

  def genre_id
    self.genre ? self.genre.name : nil
  end

  def notes_1=(content)
    self.notes << Note.create(content: content)
  end

  def notes_1
    self.notes
  end

  def notes_2=(content)
    self.notes << Note.create(content: content)
  end

  def notes_2
    self.notes
  end

end
