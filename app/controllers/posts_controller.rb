class PostsController < ApplicationController

  def index
    posts = Post.order(id: "DESC")
    @post1 = posts.where(format: "1")
    @post2 = posts.where(format: "2")
  end

  def create
    @post = Post.new(post_params)
    if @post.valid?
       @post.save
       redirect_to posts_path
    end
  end

  def destroy
     @post = Post.find(params[:id])
     @post.destroy
     redirect_to posts_path
  end 

  private

  def post_params
    params.permit(:format, :content)
  end
end