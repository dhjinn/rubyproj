class UsersController < ApplicationController
	before_action :authetnticate_user!
end
