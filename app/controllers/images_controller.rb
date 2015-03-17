class ImagesController < ApplicationController
before_filter :authenticate, only: [:vote]
before_action :set_post, only: [:show, :create, :vote]

  def index
    @images = Image.all
    render json: @images, status: 200
  end

  def create
    @image = Image.new(image_params)
    @post.images << @image
    if @image.save
      render json: @image, status: :created
    else
      render json: @image.errors, status: :unprocessable_entity
    end
  end

  def show
    @image = Image.find(params[:id])
    render json: @image, status: :ok
  end

  def vote
    value = params[:type] == "up" ? 1 : -1
    @image = Image.find(params[:id])
    @image.add_evaluation(:votes, value, @post.images)
    render json: @image, status: :ok
  end


  private
  def set_post
    @post = Post.find(params[:post_id])
  end

  def image_params
    params.require(:image).permit(:url, :post_id, :votes)
  end
end
