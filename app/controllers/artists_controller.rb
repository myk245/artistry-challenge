class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      flash[:message] = "Artist successfully created!"
      redirect_to artist_path(@artist)
    else 
      flash.now[:messages] = @artist.errors.full_messages
      render :new
    end 
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    if @artist.update(artist_params)
      flash[:message] = "Artist info successfully updated!"
      redirect_to artist_path(@artist)
    else 
      flash.now[:messages] = @artist.errors.full_messages
      render :edit
    end 
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.delete
    redirect_to artists_path
  end

  private 

  def artist_params
    params.require(:artist).permit(:name, :age, :title)
  end 

end

