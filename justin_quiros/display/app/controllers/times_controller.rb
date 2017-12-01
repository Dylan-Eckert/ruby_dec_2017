class TimesController < ApplicationController
  def main
  	@date = Time.now.strftime("%m/%d/%Y")
  	@time = Time.now.strftime("%H:%M:%S")
  end
end
