class ProductsController < ApplicationController
  def index
  	@products = Product.all
  	# render json: @products
 #  	if errors?
 #  		flash[:error] = "You must put a product name and description"
 #  		redirect_to '/products'
	# else
	# 	flash[:success] = "You added a new product!"
	# 	redirect_to '/products'
	# end

  end

  def new
  	@product = Product.create(name: params[:name], description: params[:description])
  redirect_to '/products'
  end
end
