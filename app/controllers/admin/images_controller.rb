class Admin::ImagesController < Admin::BaseController

  before_action 'find_gallery', only: [:create, :edit, :update, :destroy]


  def create
    @image = @gallery.images.create!(params_image)

    redirect_to admins_gallery_path(@gallery)
  end

  def edit

  end

  def update

  end

  def destroy

  end

  protected

  def params_image
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
