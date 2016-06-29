class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all.page(params[:page]).per(5).order("created_at DESC")
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def new
  end
  def create
    Tweet.create(image: tweet_params[:image], text: tweet_params[:text], user_id: current_user.id)
  end

end
