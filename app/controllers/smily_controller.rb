class SmilyController < ApplicationController
  def create
    Smily.create!(params[:smily])
    
    redirect_to smily_index_path
  end

  def index
    @smilys = Smily.find :all

    totalverdi = 0
    p @smilys
    @smilys.each do |smily|
      value = smily.value
      totalverdi += value
    end

    totalverdi = totalverdi / @smilys.count
    @smilytext = Smily.humor[totalverdi]
  end
end
