class TimesController < ApplicationController
  def main
    @curTime = Time.new
  end
end
