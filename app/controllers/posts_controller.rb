class PostsController < ApplicationController

	def show
		@post =Post.find(params[:id])
	end

	def create
		post = current_user.posts.build(post_params)
		if post.save
			redirect_to profile_path
		else
			flash.alert = "Post could not be created."
			redirect_to profile_path
		end
	end



	private

	def post_params
		params.require(:post).permit(:title, :body, :photo)
	end
end