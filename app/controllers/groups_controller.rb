class GroupsController < ApplicationController
	def index
		@groups = Group.all
	end

	def new
		@group = Group.new
	end

	def show
		@group = find_group
	end

	def create
		@group = Group.new(group_params)
		@group.users << current_user

		if @group.save
			redirect_to @group, notice: "Group created successfully"
		else
			render new
		end
	end

	def destroy
		@group = find_group
		@group.destroy
		redirect_to :dashboard
	end

	private

	def find_group
		Group.find(params[:id])
	end

	def group_params
		params
			.require(:group)
			.permit(:name, :description)
	end

end