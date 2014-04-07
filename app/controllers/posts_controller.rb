class PostsController < ApplicationController
  http_basic_authenticate_with :name => "acmuci", :password => "acmucianteater", except: [:show, :index]
def new 
		@post = Post.new
	end 

	def edit
  		@post = Post.find(params[:id])
	end

	def index
  		@posts = Post.all
	end

	def create
		@post = Post.new(post_params)
		if @post.save
    		redirect_to @post
  		else
    		render 'new'
  		end
	end

	def show
  		@post = Post.find(params[:id])
	end

	def update
  		@post = Post.find(params[:id])
 
  		if @post.update(params[:post].permit(:title, :category))
    		redirect_to @post
  		else
    		render 'edit'
  		end
	end

	def destroy
  		@post = Post.find(params[:id])
  		@post.destroy
 
  		redirect_to posts_path
	end

	private
  		def post_params
    		params.require(:post).permit(:title, :category)
  		end
  
end