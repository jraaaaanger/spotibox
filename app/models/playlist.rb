class Playlist < ActiveRecord::Base
  has_many :songs

  validates :name, presence: true
  validates :theme, presence: true
end
