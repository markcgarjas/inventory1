class PostsController < ApplicationController

  before_action :set_inventory_system, only: [:show, :edit, :update, :destroy]
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post].permit(:product_name, :product_id, :product_quantity, :product_description, :product_availability))
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def show
  end

  # def edit
  #   @post = Post.find(params[:id])
  # end

  def update
    @post = Post.find(params[:id])
    @post.update(params.require(:post).permit())
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    link_to posts_path
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def post_param

  end

end
