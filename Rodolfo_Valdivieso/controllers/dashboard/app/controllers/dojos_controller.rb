class DojosController < ApplicationController
  def index

  	@total = Dojo.count
  	@dojo = Dojo.all
  	return render 'index'
  end

  def view
  end
end
