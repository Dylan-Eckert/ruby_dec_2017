class DojosController < ApplicationController
  def index
  	session[:views] ||= 0
  end

  def create
  	session[:views] += 1

  	session[:survey] = survey_params

  	redirect_to dojos_show_path
  end

  def show
  	@result = session[:survey]
  	flash[:success] = "Thanks for submitting this form! You have submitted this form #{ session[:views] } time(s) now."
  end
  
  private
  	def survey_params
  		params.require(:survey).permit(:name, :location, :language, :comments)
  	end
end
