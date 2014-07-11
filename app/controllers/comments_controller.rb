class CommentsController < ApplicationController
	def new
		
	end

	def create
		@image = find_image_for_gallery
		@images.comments.create
	end

	private 

	def comment_params
		params.require(:comment).permit(:content).merge(user: current_user)
	end
	
	def find_gallery
		Gallery.find(params[:gallery_id])
	end

	def find_image_for_gallery
		find_gallery.images.find(Params[:id])
	end

end

