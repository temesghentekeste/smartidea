class PostsController < ApplicationController
   # GET /tweets/new
   def new
      @post = current_user.posts.build
   end

  # POST /tweets
  # POST /tweets.json
  def create
    @post = current_user.posts.build(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to "", notice: 'Smart idea was successfully created.' }
      else
        format.html { redirect_to "", notice: 'Smart idea was not created.' }
      end
    end
  end

  private
 

  # Only allow a list of trusted parameters through.
  def post_params
    params.require(:post).permit(:user_id, :content)
  end
end