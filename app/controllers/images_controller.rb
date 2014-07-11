class ImagesController < ApplicationController
	def index
		@galleries = Gallery.all
	end

	def new
		@gallery = find_gallery
		@image = Image.new
	end

	def create
		@gallery = find_gallery
		@image = @gallery.images.create(image_params)
		redirect_to @gallery
	end

	def show
		@gallery = find_gallery
		@image = find_image_for_gallery
	end

	private

	def image_params
		params.require(:image).permit(:name, :description, :url)
	end
	
	def find_gallery
		gallery = Gallery.find(params[:gallery_id])
	end

	def find_image_for_gallery
		image = @gallery.images.find(Params[:id])
	end
end