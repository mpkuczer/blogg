class PostsController < ApplicationController
  before_action :initialize_values

  def index
    @posts = Post.all.order("created_at DESC")
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to posts_path, notice: "Post was successfully created."
    else
      render :index, notice: "Error", status: :unprocessable_entity
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to post_path(@post), notice: "Post was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_url, notice: "Post was successfully destroyed."
  end

  private

  def initialize_values
    # @post = Post.find(params[:id])
    @posts = Post.all.order("created_at DESC")
  end

  def post_params
    params.require(:post).permit(:post)
  end
end
