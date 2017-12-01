class UsersController < ApplicationController
  def index
  	@users = User.all
  	render json: @users
  end

  def new
  end

  def show
  	user = User.find(params[:id])
  	render json: user
  end
  def create
  	@user = User.create(name: params[:name])
  redirect_to '/users'
  end
  def edit
  	@users = User.find(params[:id])
  	puts @users.name
  end

  def total
  	@total = User.all.count
  	render :text => "There are " + @total.to_s + " users!"
  end
end
