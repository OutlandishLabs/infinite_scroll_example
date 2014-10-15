class PostsController < ApplicationController
  def index
    @posts = Post.paginate(page: params[:page])
    respond_to do |format|
      format.js {render text: render_to_string(:partial => 'post_list', :layout => false, 
           :locals => {:posts => @posts})}
      format.html
    end
  end
end
