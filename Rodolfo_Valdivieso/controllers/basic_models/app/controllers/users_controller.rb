class UsersController < ApplicationController

  def index

  end

  def USERALL
    return render json: User.all
    #return render text: 'Helloooooooo' 
  end

  def new
    return render 'new'
  end

  def show
    id = params[:id]
    @user = User.find(id)

    return render json: User.find(id)
    #return render 'show'
  end

  def edit
    id = params[:id]
    @user = User.find(id)
    return render 'edit'
  end


  def create
    puts params['name']
    user = User.create(name:params['name'])
    return redirect_to '/users/'+user.id.to_s
  end

  def total
    return render text: "Total of user: " + User.count.to_s
  end

end
