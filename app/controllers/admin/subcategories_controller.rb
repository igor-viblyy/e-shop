class Admin::SubcategoriesController < Admin::BaseController

  before_action 'find_category', only: [:create, :edit, :update, :destroy]

  before_action 'find_subcategory', only: [:edit, :update, :destroy]


  def create
    @subcategory = @category.subcategories.create(params_subcategory)

    redirect_to admins_category_path(@category)
  end

  def edit

  end

  def update
    @subcategory.update_attributes(params_subcategory)

    redirect_to admins_category_path(@category)
  end

  def destroy
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

  def find_subcategory
    @subcategory = @category.subcategories.find(params[:id])
  end

end
