class SmilyController < ApplicationController
  def create
    Smily.create!(params[:smily])
    
    redirect_to smily_index_path
  end

  def index
    p Smily.find :all
    @smilytext = Smily.snitt
  end
end
