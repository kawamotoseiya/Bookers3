class FollowingsController < ApplicationController
	def index
	@user = User.find(params[:id])
    @users = @user.followings
end
