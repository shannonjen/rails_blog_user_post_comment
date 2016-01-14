class HomeController < ApplicationController
  def home
  	if current_user
  		@post = current_user.posts.build
  		@posts = Post.all
  	end
  end
end
