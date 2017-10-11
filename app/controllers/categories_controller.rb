class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @title = @category.name
    @posts = @category.posts
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to category_path, notice: 'Category saved'
    else
      render 'new'
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(category_params)
      redirect_to categories_path, notice: 'Your category have been update'
    else
      render 'edit'
    end
  end

  private

  def category_params
    params.require(:category).permit(:category, :name)
  end
end
