class PostsController < ApplicationController

  def index
    @posts = Post.paginate(page: params[:page])
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post, notice: "New post was successfully created!"
    else
      render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post, notice: "The post was successfully updated!"
    else
      render 'edit'
    end
  end

  private
  def post_params
    params.require(:post).permit(:author, :title, :category_id, :content)
  end

end
