class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(title: params[:title], content: params[:content])
    if @post.save
      flash[:notice] = "投稿が完了しました" 
      redirect_to("/posts/index")
    else
      render("posts/new")
    end
  end
end
