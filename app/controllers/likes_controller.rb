class LikesController < ApplicationController
  def create
    tweet = Tweet.find(params[:tweet_id])
    current_user.likes.create(tweet: tweet)
    redirect_to tweet
  end
end
