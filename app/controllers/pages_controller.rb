class PagesController < ApplicationController
  def home
  	@posts = Post.all
  	@meta_title = meta_title 'Read , write, read later'
  	@meta_description = "Welcome to Claeus, a place to read, write, and interact with the stories that inspire you. Read, write and share your stories on Claeus"
  end

  def about
  end
end
