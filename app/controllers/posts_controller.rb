class PostsController < ApplicationController

  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.author = current_user

    if !@post.save
      binding.pry
      return render :new
    end

    redirect_to post_path(@post)
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
