class Admin::GalleriesController < Admin::BaseController

  before_action 'find_gallery', only: [:show, :edit, :update, :destroy]
  #before_action 'find_product', only: [:create, :edit, :update, :destroy]

  add_breadcrumb "Galleries", :admin_galleries_path

  def index
    @galleries = Gallery.all
  end

  def show
    add_breadcrumb "#{@gallery.name}"
  end

  def new
    add_breadcrumb "New Gallery"
    @gallery = Gallery.new
  end

  def create

    @gallery = Gallery.create(params_gallery)

    if @gallery.save
      redirect_to admin_gallery_path(@gallery)
    end

  end

  def edit
    add_breadcrumb "#{@gallery.name}"
  end

  def update
    @gallery.update_attributes!(params_gallery)

    redirect_to admins_gallery_path(@gallery)
  end

  def destroy
    @gallery.destroy

    redirect_to admins_galleries_path
  end

  private

  def params_gallery
    params.required(:gallery).permit(:id,
                                     :name,
                                     :description,
                                     :updated_at,
                                     :created_at,
                                     :product_id)
  end

  def find_gallery
    @gallery = Gallery.find(params[:id])
  end

  def find_product
    @product = Product.find(params[:product_id])
  end

end
