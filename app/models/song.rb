class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artist
  belongs_to :genre
  has_many :notes
  
  # Custom Setters and Getters
  def genre_name=(name)
    self.genre = Genre.find_or_create_by(name: name)
  end
  
  def genre_name
    self.genre ? self.genre.name : nil
  end
  
  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end
  
  def artist_name
    self.artist ? self.artist.name : nil
  end
  
   # Example on how to do notes_contents=(notes)
   # def post_ids=(ids)
   #   ids.each do |id|
   #     post = Post.find(id)
   #     self.posts << post
   #   end
   # end  
  
  def note_contents=(notes)
    notes.each do |note|
      content = Note.find(note)
      self.notes << content
    end
  end
  
  def note_contents
    self.notes
  end
  
end
