class PlaylistsController < ApplicationController
  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.new(new_playlist_params)
  end

  def index
    @playlists = Playlist.all
  end

  def show
    @playlist = Playlist.find(param[:playlist_id])
  end

  private

  def new_playlist_params
    params.require(:playlist).permit(:name, :theme)
  end
end
