class Admins::SubcategoriesController < Admins::BaseController

  def index
    @subcategories = @category.subcategories.all
  end

  def new
    @subcategory = @category.subcategories.new
  end

  def edit

  end

  def update

  end

  def destroy

  end
end
