class DojosController < ApplicationController
  def index
  	@dojos = Dojo.all
  end
  
  def new
  	@dojo = Dojo.new
  end

  def create
  	# session[:form] = form_params
	@dojo = Dojo.new(form_params)
	if @dojo.save
		flash[:success] = "You have successfully created a Dojo!"
		redirect_to dojos_path
  	else 
  		flash[:errors] = @dojo.errors.full_messages
  		redirect_to dojos_new_path
  	end
  end

  private
  	def form_params
  		params.require(:form).permit(:branch, :street, :city, :state)
  	end
end
	