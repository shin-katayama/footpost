class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
  end

  def create
    Tweet.create(tweet_params)
  end

  private
  def tweet_params
    params.permit(:name, :image, :text)
  end


end