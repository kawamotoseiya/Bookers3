class FollowersController < ApplicationController
	def index
	@user = User.find(params[:id])
    @users = @user.followers
  end
end
