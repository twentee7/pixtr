class GalleriesController < ApplicationController
	def index
		@galleries = Gallery.all
	end

	def new
		@gallery = Gallery.new
	end

	def create
		gallery = Gallery.create(gallery_params)
		redirect_to gallery
	end

	def show
		@gallery = find_gallery
		@images = @gallery.images
	end

	def destroy
		gallery = find_gallery
		gallery.destroy
		redirect_to galleries_path
	end

	def update
		gallery = find_gallery
		if gallery.update(gallery_params)
			redirect_to gallery
		else
			render :edit
		end
	end

	def edit
		@gallery = find_gallery
	end		

	private

	def gallery_params
		params
			.require(:gallery)
			.permit(:name, :description)
	end

	def find_gallery
		Gallery.find(params[:id])
	end
end