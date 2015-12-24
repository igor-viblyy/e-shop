class Admin::CategoriesController < Admin::BaseController

  before_action 'find_category', only: [:show, :edit, :update, :destroy]

  add_breadcrumb "Categories", :admin_categories_path

  def index
    @categories = Category.all
  end

  def show
    add_breadcrumb "Show category", admin_category_path
  end

  def new
    add_breadcrumb "New Category", new_admin_category_path
    @category = Category.new

    if @category
      @subcategory = @category.children.build(@category.name)
    end
  end

  def create
    @category = Category.create!(params_category)

    if @category.save
      redirect_to admin_categories_path
    else
      redirect_to new_admin_category_path
    end
  end

  def edit
    add_breadcrumb "Edit category #{@category.name}", edit_admin_category_path(@category)
  end

  def update
    if @category.update_attributes!(params_category)
      redirect_to admin_category_path(@category)
    else
      redirect_to edit_admin_category_path(@category)
    end
  end

  def destroy
    if @category.destroy
      redirect_to admin_categories_path
    end
  end

  private

  def params_category
    params.required(:category).permit(:id, :name, :updated_at, :created_at, :subcategory_id)
  end

  def find_category
    @category = Category.find(params[:id])
  end

end
