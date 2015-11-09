class ArtistsController < ApplicationController
  # Artists#Index
  def index
    @artists = Artist.all
  end
  # Artists#Show
  def show
    @artist = Artist.find(params[:id])
  end
  # Artists#New
  def new
  end
  # Artists#Create
  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to "/artists/#{@artist.id}"
    else
      redirect_to "/artists/new"
    end
  end
  # Artists#Edit
  def edit
    @artist = Artist.find(params[:id])
  end
# Artists#Update
  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)
    if @artist.save
      redirect_to "/artists/#{@artist.id}"
    else
      redirect_to "/artists/#{@artist.id}/edit"
    end
  end
# Artists#Destroy
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
