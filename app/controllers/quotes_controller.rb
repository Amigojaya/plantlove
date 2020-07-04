class QuotesController < ApplicationController
  
  def index
  	@quote = Quote.new
  	@quotes = Quote.all.order(id: :desc)
  end

  def quote_create
  	@quote = Quote.create(quote_params)
  	if @quote.save
  		redirect_to quotes_path
  	else
  		render 'index'
  	end
  end 

  def quote_edit
  	if Quote.find(params[:id]).status != "approved"
  		@quote = Quote.find(params[:id])
  	end
  end

  def quote_update
  	@quote = Quote.find(params[:id])
  	if @quote.update(quote_params)
  		redirect_to quotes_path
  	else
  		render 'quote_edit'
  	end
  end

  def destory
  	@quote = Quote.find(params[:id])
  	@quote.destroy
  	redirect_to quotes_path
  end


private 

  def quote_params 
  	params.require(:quote).permit(:quotes,:author)
  end 


end
