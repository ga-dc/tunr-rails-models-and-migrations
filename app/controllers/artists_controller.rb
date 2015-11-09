class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to "/artists/#{@artist.id}"
    else
      render :new
    end
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    if @artist.update(artist_params)
      redirect_to "/artists/#{@artist.id}"
    else
      render :edit
    end
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to "/artists"
  end

  # Private to artists controller
  private
  # Only allow these params from the scary internet
  def artist_params
    params.require(:artist).permit(:name, :photo_url, :nationality)
  end
end
