class RpgsController < ApplicationController
  
  def index
  	session[:gold] ||= 0
  	session[:activity] ||= []
    @gold = session[:gold]
    @activities = session[:activity]

  end

  def win_lose
    if params[:place] == 'farm'
      gold = rand(10..20)
    elsif params[:place] == 'cave'
      gold = rand(5..10)
    elsif params[:place] == 'house'
      gold = rand(2..5)
    elsif params[:place] == 'casino'
      gold = rand(-50..50)
    end
    time = Time.now

    if gold > 0
      session[:activity] << "Earned #{gold} golds from the #{params[:place]}! (#{time.strftime('%Y/%m/%d %l:%M %P')})"
    else
      session[:activity] << "Entered a casino and lost #{gold} golds... Ouch. (#{time.strftime('%Y/%m/%d %l:%M %P')})"
    end
    session[:gold] += gold
    redirect_to root_path
  end
end
