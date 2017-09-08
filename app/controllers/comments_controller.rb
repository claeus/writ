class CommentsController < ApplicationController
	before_action :authenticate_user!

	def create
		@post = Post.friendly.find(params[:post_id])
		@comment = @post.comments.create(comment_params)
		@comment.user = current_user
		if @comment.save
			respond_to do |format|
				format.js 
				format.html { redirect_to @comment.post_path, notice: "Thanks for your response"}
			end
		else
			flash.alert = "Post could not be created."
			redirect_to @comment.post_path
		end
	end


	private

	def comment_params
		params.require(:comment).permit(:body, :post)
	end
end
