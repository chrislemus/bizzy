class BusinessesController < ApplicationController

  def index
    @businesses = Business.all
  end

  def show
    
  end
end
