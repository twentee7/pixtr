class GroupMembershipsController < ApplicationController
	def create
		find_group
		group.users << current_user
		redirect_to group, notice: "Joined group successfully"
	end

	def destroy
		group_membership = GroupMembership.find(params[:id])
		group_membership.destroy
		redirect_to dashboard_path, notice: "Removed from Group"
	end

	private

	def find_group
		group = Group.find(params[:id])
	end
end
