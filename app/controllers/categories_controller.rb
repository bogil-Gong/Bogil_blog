class CategoriesController < ApplicationController
  def index
    @categories = Category.paginate(page: params[:page], per_page: 5)
  end

  def new
    @category = Category.new
  end

  def show
    #code
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = "카테고리가 만들어졌습니다."
      redirect_to categories_path
    else
      render 'new'
    end
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end
