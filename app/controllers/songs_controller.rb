class SongsController < ApplicationController
   def index
      @songs = Song.all
    end
  
    def new
      @song = Song.new
      @artists = Artist.all
      @instruments = Instrument.all
    end
  
    def create
      @song = Song.create(song_params)
      redirect_to artist_path(@song.artist)
    end
  
    def show
      @song = Song.find(params[:id])
    end
  
    def edit
      @song = Song.find(params[:id])
    end
  
    def update
      @song = Song.find(params[:id])
      song.update(song_params)
      redirect_to artist_path(@artist)
    end
  
    def destroy
      @song = Song.find(params[:id])
      @song.delete
      redirect_to song_path
    end
  
    private 
  
    def song_params
      params.require(:song).permit(:name, :artist_id, :instrument_id)
    end 
end
