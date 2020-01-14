class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    find_song
  end

  def new
    @song = Song.new
    @genres = Genre.all
    @artists = Artist.all
  end

  def create
    @song = Song.create(strong)

    redirect_to song_path(@song)
  end

  def edit
    find_song
  end

  def update
    find_song
    @song.update(strong)

    redirect_to song_path(@song)
  end

  private 

  def find_song
    @song = Song.find(params[:id])
  end

  def strong
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

end
