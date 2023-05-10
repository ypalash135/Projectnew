class PostController < ApplicationController
  def index
    @posts = Post.all
  end

  def give
    @post = Post.find(params[:id])
  end

  def add
    @post = Post.new
  end

  def creation
    
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post
    else
      render :add, status: :unprocessable_entity
    end
  end

  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def post_params
      params.require(:Post).permit(:title, :body)
    end
end
