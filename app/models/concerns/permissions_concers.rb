module PermissionsConcern extend ActiveSupport::Concern
	def is_normal_user?
		self.permissions_level == 0
	end

	def is_normal_user?
		self.permissions_level >= 1
	end

	def is_normal_user?
		self.permissions_level >= 2
	end
end