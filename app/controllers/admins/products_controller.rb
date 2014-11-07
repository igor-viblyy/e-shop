class Admins::ProductsController < Admins::BaseController

  add_breadcrumb "Products", :admins_products_path
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    add_breadcrumb "Show #{@product.title}"
  end

  def new
    add_breadcrumb "New"
    @product = Product.new
  end

  def create
    @product = Product.create!(params_product)
    if @product.save
      redirect_to admins_products_path
    else
      render 'admins/products/new'
    end
  end

  def edit
    @product = Product.find(params[:id])
    add_breadcrumb "Edit product: #{@product.title}"
  end

  def update
    @product = Product.find(params[:id])
    @product.update_attributes(params_product)
    redirect_to admins_product_path(@product)
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to admins_products_path
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
end