class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end
  
  def create
    binding.pry
    post = Post.new
    post.title = params[:title]
    post.description = params[:description]
    post.save
    redirect_to action: "show", id: @post.id
  end

  # add create method here
end
