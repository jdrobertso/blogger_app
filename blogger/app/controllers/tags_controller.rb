class TagsController < ApplicationController
	def show
		@tag = Tag.find(params[:id])
	end
	
	def index
		@tag = Tag.all
	end

	def destroy
		@tags = Tag.destroy(params[:id])
		redirect_to articles_path
	end
end
