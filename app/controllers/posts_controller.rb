class PostsController < ApplicationController
  def index
    @posts = Post.paginate(page: params[:page])
    if request.xhr?
      render :partial=>"post_list"
    end
  end
end
