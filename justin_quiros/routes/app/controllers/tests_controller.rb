class TestsController < ApplicationController


  def index
  	render :text => "What do you want me to say???"
  end
  def hi
  	session[:count] ||= 0
  	render :text => "Hello CodingDojo!"
  end
  def say_hello
  	render :text => "Saying Hello!"
  end
  def hello
  	if params[:name] == "joe"
  		render :text => "Saying Hello Joe!"
  	else
  		redirect_to '/say/hello/joe'
  	end 
  end
  def hello_joe
  	render :text => "Saying Hello Joe!"
  end
  def times
  	session[:count] += 1
  	render :text => "You have visited this page " + session[:count].to_s + " times."
  end
  def times_restart
  	session[:count] = 0
  	render :text => "Destroyed the session!"
  end
end
