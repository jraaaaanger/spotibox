class Song < ActiveRecord::Base
  belongs_to :playlist

  validates :name, presence: true
  validates :artist, presence: true
  validates :spotify_id, presence: true
end
