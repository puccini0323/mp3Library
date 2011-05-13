class PlaylistController < ApplicationController

  def index
    @mp3s = Mp3.all
  end

  def new
     @artists = Mp3.all.map(&:artist_name).uniq.sort
     @ratings = %w{1 2 3 4 5}
  end


  def create
    @mp3s = [];
    rating = params[:rating][:value]
    artist = params[:artist][:name]

    Mp3.joins(:ratings).where( :mp3s => { :artist_name => artist } ).each { |i| @mp3s << i if i.average_rating >= rating.to_i }
  end


end
