class TestsController < ApplicationController
  def index
    render text: "what do you want me to say"
  end

  def hello
    render text: "hello codingdojo"
  end

  def sayHello
    render text: "saying hello"
  end

  def joe
    render text: "saying hello joe"
  end

  def michael
    redirect_to "/say/hello/joe"
  end

  def amount
    session[:times] ||= 1
    render text: "this page #{session[:times]} times"
    session[:times] += 1
  end

  def restart
    session.clear
    redirect_to "/times"
  end

end
