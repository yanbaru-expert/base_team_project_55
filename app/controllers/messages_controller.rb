class MessagesController < ApplicationController
  def new
    @post = Post.new
  end

  def Create
    post = Post.create!(post_params)
    redirect_to post
  end

  private

  def post_params
    params.require(:post).permit(:title. :content)
  end
end
