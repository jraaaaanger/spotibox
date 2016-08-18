class SongsController < ApplicationController
  def new
    @song = Song.new
    @playlists = Playlist.all
  end

  def create
    @song = Song.new(new_song_params)
  end

  def index
    @songs = []
    Song.all.each do |song|
      song_hash = {}
      song_hash[:name] = song.name
      song_hash[:artist] = song.artist
      song_hash[:spotify_id] = song.spotify_id
      song_hash[:playlist_id] = song.playlist_id

      @songs << song_hash
    end
  end

  private

  def new_song_params
    params.require(:song).permit(:name, :artist, :playlist_id, :spotify_id)
  end
end
