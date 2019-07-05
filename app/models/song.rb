class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artist
  belongs_to :genre
  has_many :songs
  
  # Custom Setters and Getters
  def genre_name=(name)
    
  end
end
