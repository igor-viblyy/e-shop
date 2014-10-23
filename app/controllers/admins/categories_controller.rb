class Admins::CategoriesController < Admins::BaseController

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
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

    @category.destroy
  end

  protected

  def params_category
    params.required(:category).permit(:id, :name, :category_id)
  end

end
