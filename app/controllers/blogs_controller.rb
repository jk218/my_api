class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
    render json: @blogs
  end

  def update
    @blog = Blog.find(params[:id])
    @blog.update(update_params)
    render json: @blog
  end

  def create
    @blog = Blog.create(update_params)  
    @blog.save
    render json: @blog
    
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    render plain: 'success'
  end

  def show
    @blog = Blog.find(params[:id])
    render json: @blog
  end

  private
  def update_params
    params.require(:blog).permit(:title, :description, :blog_type)
  end
end
