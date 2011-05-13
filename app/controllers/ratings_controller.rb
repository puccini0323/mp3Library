class RatingsController < ApplicationController
  
  def create
      @mp3 = Mp3.find(params[:mp3_id])
      @rating = @mp3.ratings.create(params[:rating])
      redirect_to mp3_path(@mp3)
  end
  
  
  
end
