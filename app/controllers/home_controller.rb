class HomeController < ApplicationController
  @@results_per_page = 2 
  def index
    # params will be used in views for input and links
    @params = params.permit(:query, :page)
    # current page will be 1 by deault unless
    # user clicks on another page 
    @current_page = params[:page].try(:to_i) || 1
    # create a fetch request to database and retrieve the results
    @results, @pages_count  = database(@params, @current_page)
  end

  # sample database
  def database(params, current_page)
    # dummy data
    data = [ 'apple', 'cake', 'candy apple', 'car',
      'friend', 'run', 'hunt', 'ship', 'tip'
    ]
    # filter data using provided parameters. You can filter the data 
    # with as many parameters as you'd like
    results = data.filter{|i| i.include? params[:query].to_s} 
    # total number of pages that should be displayed
    pages_count = (results.length/@@results_per_page.to_f).ceil
    
    # results to display based on current page and result limit
    start = @@results_per_page * (current_page - 1)
    results = results[start, @@results_per_page]
    [results, pages_count]
  end
end
