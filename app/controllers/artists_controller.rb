class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    find_artist
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(strong)
    
    redirect_to artist_path(@artist)
  end

  def edit
    find_artist
  end

  def update
    find_artist
    @artist.update(strong)

    redirect_to artist_path(@artist)
  end

  private
  
  def find_artist
    @artist = Artist.find(params[:id])
  end

  def strong
    params.require(:artist).permit(:name, :bio)
  end

end
