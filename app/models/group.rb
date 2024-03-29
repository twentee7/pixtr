class Group < ActiveRecord::Base
	has_many :images
	has_many :group_memberships
	has_many :users, through: :group_memberships

	validates :name, presence: true
	validates :description, presence: true
end