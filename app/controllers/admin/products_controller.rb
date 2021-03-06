class Admin::ProductsController < Admin::BaseController

  before_action 'find_product', only: [:show, :edit, :update, :destroy]

  add_breadcrumb "Products", :admin_products_path


  def index
    @products = Product.all
  end

  def show
    add_breadcrumb @product.title
  end

  def new
    add_breadcrumb "New product"

    @product = Product.new
  end

  def create
    @product = Product.create!(params_product)

    if @product.save
      redirect_to admin_products_path
    else
      render 'admin/products/new'
    end

  end

  def edit
    add_breadcrumb "Edit product: #{@product.title}"

  end

  def update
    @product.update_attributes(params_product)
    redirect_to admin_product_path(@product)
  end

  def destroy
    @product.destroy
    redirect_to admin_products_path
  end

  private

  def params_product
    params.required(:product).permit(:id,
                                     :title,
                                     :description,
                                     :image,
                                     :price,
                                     :status,
                                     :created_at,
                                     :updated_at,
                                     :category_id,
                                     :subcategory_id)
  end

  def find_product
    @product = Product.find(params[:id])
  end
end