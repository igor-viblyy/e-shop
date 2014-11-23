class Admins::SubcategoriesController < Admins::BaseController

  before_action 'find_category', only: [:create, :edit, :update, :destroy]

  add_breadcrumb "Subcategories"

  def index
    @subcategories = Subcategory.all
  end

  def show

  end

  def create
    @subcategory = @category.subcategories.create(params_subcategory)

    redirect_to admins_category_path(@category)

  end

  def edit
    @subcategory = @category.subcategories.find(params[:id])
    #@subcategory = Subcategory.find(params[:id])
  end

  def update
    @subcategory = @category.subcategories.find(params[:id])
    @subcategory = @category.subcategories.update_attributes(params_subcategory)

    redirect_to admins_category_path(@category)
  end

  def destroy
    @subcategory = @category.subcategories.find(params[:id])

    @subcategory.destroy

    redirect_to admins_category_path(@category)

  end

  private

  def params_subcategory
    params.required(:subcategory).permit(:id, :name, :updated_at, :created_at, :category_id)
  end

  def find_category
    @category = Category.find(params[:category_id])
  end

end
