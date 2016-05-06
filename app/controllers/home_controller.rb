class HomeController < ApplicationController
  def index
    @posts = Post.all
    
  end

  def write
    post = Post.new
    post.title = params[:title]
    post.content = params[:content]
    
 
    
    if post.save
    
    redirect_to  "/home/index"
    
    else render :text =>post.errors.messages[:title].first
  end

end

def destroy
  @post =Post.find(params[:post_id])
  @post.destroy
  redirect_to "/home/index"
  end

end
