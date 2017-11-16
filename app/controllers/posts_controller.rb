class PostsController < ApplicationController
  
  before_action :set_post, only: [:show, :edit, :update, :destory]
  
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    Post.create(
      title: params[:title],
      content: params[:content]
    )
    redirect_to :root
  end

  def show
  end

  def edit
  end

  def update
    @post.update(
      title: params[:title],
      content: params[:content]
    )
    
    redirect_to post_past(@post.id)
  end

  def destory
    @post.destroy
    
    redirect_to root_path
    #redirect_to '/'
    #redirect_to :root
  end
  
  private
  def set_post
    @post = Post.find(params[:id])
  end
  
  
end
