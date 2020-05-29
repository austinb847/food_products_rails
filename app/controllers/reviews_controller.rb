class ReviewsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
    render :new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    if @review.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  

  # def show
  #   @album = Album.find(params[:album_id])
  #   @song = Song.find(params[:id])
  #   render :show
  # end

  # def edit
  #   @album = Album.find(params[:album_id])
  #   @song = Song.find(params[:id])
  #   render :edit
  # end

  # def update
  #   @song = Song.find(params[:id])
  #   if @song.update(song_params)
  #     redirect_to album_path(@song.album)
  #   else
  #     render :edit
  #   end
  # end

  # def destroy
  #   @song = Song.find(params[:id])
  #   @song.destroy
  #   redirect_to album_path(@song.album)
  # end

  private
    def review_params
      params.require(:review).permit(:author, :rating, :content_body)
    end
end