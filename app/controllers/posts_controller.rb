class PostsController < ApplicationController
  # GET /posts
  def index
    # Caso não hajam parâmetros de busca, retorna lista normal
    if params[:s].nil?
      @posts = Post.find(:all, :order => 'created_at DESC', :include => :user)
    else
      @posts = Post.find(:all, :order => 'created_at DESC', :include => :user, :conditions => "title LIKE '%#{params[:s]}%' OR body LIKE '%#{params[:s]}%'")
    end
  end
  
  # GET /posts/new
  def new
    @post = Post.new
  end
  
  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end
  
  # POST /posts
  def create
    @post = Post.new(params[:post])
    @post.user = session[:user]
    @post.save
    redirect_to post_url(@post)
  end
  
  # POST /posts/1
  def update
    @post = Post.find(params[:id])
    @post.update_attributes(params[:post])
    redirect_to post_url(@post)
  end
  
  # GET /posts/1
  def show
    @post = Post.find(params[:id])
    if session[:user].nil?
        @comment = Comment.new
    else
        @comment = Comment.new(:author => session[:user].real_name, :email => session[:user].email)
    end
  end
  
  # DELETE /posts/1
  def destroy
    Post.destroy(params[:id])
    redirect_to posts_url
  end  
end
