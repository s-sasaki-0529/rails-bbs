class PostController < ApplicationController

  def create
    @post = Post.new(params[:post].permit(:topic_id, :name, :body))
    @post.save
    redirect_to topics_show_path(params[:post]['topic_id'])
  end

end
