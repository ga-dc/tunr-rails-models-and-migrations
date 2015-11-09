class ArtistsController < ApplicationController

  # GET /artists
  def index
    @artists = Artist.all
  end

  # GET /artists/:id
  def show
    @artist = Artist.find(params[:id])
  end

  # GET /artists/new
  def new
  end

  # POST   /artists
  def create
    @artist = Artist.create!(artist_params)
    redirect_to "/artists/#{@artist.id}"
  end

  # GET /artists/:id/edit
  def edit
    @artist = Artist.find(params[:id])
  end

  # PATCH  /artists/:id
  def update
    @artist = Artist.find(params[:id])
    @artist.update!(artist_params)
    redirect_to "/artists/#{@artist.id}"
  end

  # DELETE /artists/:id
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
