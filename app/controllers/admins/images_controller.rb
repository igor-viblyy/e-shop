class Admins::ImagesController < ApplicationController

  before_action 'find_gallery', only: [:create, :edit, :update, :destroy]

  def index
    @images = Image.all
  end

  # def show
  #
  # end
  #
  # def new
  #
  # end

  def create
    @image = @gallery.images.create!(params_image)

    redirect_to admins_gallery_path(@gallery)
    # if @image.save
    #   redirect_to
    # end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  protected

  def params_image

  end

  def find_image
    params.required(:image).permit(:id,
                                   :name,
                                   :description,
                                   :gallery_id,
                                   :created_at,
                                   :updated_at)
  end

  def find_gallery
    @gallery = Gallery.find(params[:image_id])
  end
end
