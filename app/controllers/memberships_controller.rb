class MembershipsController < ApplicationController
	def create
		@user = current_user
		@admin = Admin.new(params[:admin])
		Admin.transaction do
			if @admin.save
				if Membership.create(params[:membership]).merge(:user => @user, :group => @group])
				end
			end
		end
	end

	# def membership_params
	# 	params.require(:membership).permit(:group_id, :user_id)
	# end
end
