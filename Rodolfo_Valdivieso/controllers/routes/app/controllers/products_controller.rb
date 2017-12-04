class ProductsController < ApplicationController
  def index
  	render text: 'What do you want me to say?'
  	session[:times] ||= 0
  end

  def hello
  	render text: 'Hello Coding Dojo'
  end

  def timesRestart
  	session[:times] = nil
  	return render text: 'Time Session Destroyed'
  end

  def times
  	session[:times] ||= 0
  	session[:times] += 1
  	return render text: 'You have been here:  ' + session[:times].to_s + ' times'
  end

  def sayHello
  	render text: 'Saying Hello'
  end 

  def sayHelloName
  	

  	if params[:name] == 'michael'
  		return redirect_to '/say/hello/joe'
  	end

  	return render text: 'Saying Hello ' + params[:name].capitalize
  end 
end
