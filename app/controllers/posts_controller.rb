class PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :destroy, :update]

	def show
	end

	def edit
		
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

	def find_post
		@post =Post.find(params[:id])
	end

	def post_params
		params.require(:post).permit(:title, :body, :photo)
	end
end