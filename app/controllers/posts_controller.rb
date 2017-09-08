class PostsController < ApplicationController
	before_action :authenticate_user!, except: [:show]
	before_action :find_post, only: [:show, :edit, :destroy, :update]

	def show
		@comments = Comment.where(post: @post).order('created_at DESC')
		set_meta_tags title: @post.title,
									site: 'Claeus',
									reverse: true,
									description: @post.body.truncate(200),
									twitter: {
										card: 'summary',
										site: '@claeusgh',
										title: @post.title,
										description: @post.body.truncate(200)
									},
									og: {
										title: "Claeus",
										description: @post.body.truncate(200),
										type: 'website',
										url: post_url(@post),
										image: @post.image
									}
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
		@post =Post.friendly.find(params[:id])
	end

	def post_params
		params.require(:post).permit(:title, :body, :image)
	end
end