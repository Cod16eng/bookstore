class CategoriesController < ApplicationController
  def index
    @page_title = 'Add Category'
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
       if @category.save
        flash[:notice] = "Category Created"
         redirect_to categories_path
       else
        render 'new'
      end
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end
