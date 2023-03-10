class PostsController < ApplicationController
  def index
    # Gunakan method order untuk mengurutkan post menggunakan created_at
    @posts = Post.all.order(created_at: :desc)
    # @posts = Post.all
  end
  
  def show
    @post = Post.find_by(id: params[:id])
  end
  
  def new
  end
  
  def create
    @post = Post.new(content: params[:content])
    @post.save
    redirect_to("/posts/index")
  end
end
