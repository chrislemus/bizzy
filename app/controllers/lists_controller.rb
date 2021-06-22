class ListsController < ApplicationController
  layout "forms", only: [:new, :create, :edit]

  def index
    
    results_per_page = 4
    results = ['apple', 'cake', 'candy apple', 'car', 'friend', 'run', 'hunt', 'ship', 'tip']
    @params = params.permit(:query, :page)
    
    results.filter!{|item| item.include? @params[:query]} if @params[:query]
    
    @current_page = params[:page] ? params[:page].to_i : 1

    @pages_count = (results.length/results_per_page.to_f).ceil

    start = results_per_page * (@current_page - 1)
    @results = results[start, results_per_page]

  end 
end