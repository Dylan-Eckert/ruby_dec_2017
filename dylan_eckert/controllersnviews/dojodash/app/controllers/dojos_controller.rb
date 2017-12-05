class DojosController < ApplicationController

  def index
    @dojos = Dojo.all
  end

  def new

  end

  def create
    @dojo = Dojo.create(dojo_params)

    if @dojo.valid?
      redirect_to dojos_path
    else
      flash[:errors] = @dojo.errors.full_messages
      redirect_to new_dojo_path
    end

  end

  def show
    @dojo = Dojo.find(params[:id])
  end

  def edit
    @dojo = Dojo.find(params[:id])
  end

  def update
    dojo = Dojo.find(params[:id])
    dojo.update(dojo_params)
    redirect_to dojos_path
  end

  def destroy
    dojo = Dojo.find(params[:id])
    dojo.destroy
    redirect_to dojos_path
  end

  private
    def dojo_params
      params.require(:dojo).permit(:branch, :street, :city, :state)
    end

end
