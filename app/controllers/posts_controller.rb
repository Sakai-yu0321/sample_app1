class PostsController < ApplicationController
  def index
    @posts = Post.all.order(updated_at: :desc)
  end

  def show
    @post = Post.find_by(id: params[:id])
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

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.title = params[:title]
    @post.content = params[:content]
    if @post.save
      redirect_to("/posts/index")
      flash[:notice] = "編集が完了しました"
    else
      render("posts/edit")
    end
  end
end
