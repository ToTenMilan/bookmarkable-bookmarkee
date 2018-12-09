class WebpagesController < ApplicationController
  def index
  	@webpages = Webpage.order(:name)
  	respond_to do |f|
  		f.html
  		f.json { render json: @webpages }
  	end
  end

  def show
  	@webpage = Webpage.find(params[:id])
  	respond_to do |f|
  		f.html
  		f.json { render json: @webpage }
  	end
  end

  def create
  	@webpage = Webpage.create(webpage_params)
  end

  private

  def webpage_params
  	params.require(:webpage).permit(:name)
  end
end
