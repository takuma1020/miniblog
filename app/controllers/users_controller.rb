class UsersController < ApplicationController
  def show
    @tweets = current_user.tweets.order("created_at DESC").page(params[:page]).per(5)
  end
end