class UsersController < ApplicationController

	def index
  		render json: User.all
	end

	def new
		return render 'new.html.erb'
	end

	def create
		@user=User.create(user_params)
    	return redirect_to '/users'
	end

	def info
		render json: User.find(params[:id])
	end

	def edituser
		@name = User.find(params[:id]).name
		session[:id] = params[:id]
		return render 'edit.html.erb'
	end

	def edit
		@user= User.find(session[:id]).update(user_params)
    	return redirect_to '/users'
    end

    def total
    	@count = User.all.count
    	puts @count
    	render text: "There are #{@count} total users!"
    end


	private
    	def user_params
     		params.require(:user).permit(:name)
    	end





end
