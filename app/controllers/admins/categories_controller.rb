class Admins::CategoriesController < Admins::BaseController

  add_breadcrumb "Categories", :admins_categories_path

  def index
    @categories = Category.all
  end

  def show
    add_breadcrumb "Show category", admins_category_path
    @category = Category.find(params[:id])
  end

  def new
    add_breadcrumb "New Category", new_admins_category_path
    @category = Category.new

    if @category.id?
      @subcategory = @category.subcategories.new
    end
  end

  def create
    @category = Category.create!(params_category)

    if @category.save
      redirect_to admins_categories_path
    else
      redirect_to new_admins_category_path
    end
  end

  def edit
    add_breadcrumb "Edit category", edit_admins_category_path(@category)
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])

    if @category.update_attributes!(params_category)
      redirect_to admin_category_path(@category)
    else
      redirect_to edit_admin_category_path(@category)
    end
  end

  def destroy
    @category = Category.find(params[:id])

    if @category.destroy
      redirect_to admin_categories_path
    end
  end

  private

  def params_category
    params.required(:category).permit(:id, :name, :subcategory_id)
  end

end
