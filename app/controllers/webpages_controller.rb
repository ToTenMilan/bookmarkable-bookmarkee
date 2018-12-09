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
  	protocol, domain, path = Webpage.extract_domain_and_path(params[:webpage][:name])
  	webpage = Webpage.find_or_initialize_by(name: domain)
  	bookmark = webpage.bookmarks.new(name: path)
  	respond_to do |f|
	  	if webpage.save && bookmark.save
	  		webpage.update(protocol: protocol)
	  		f.html do
	  			flash[:success] = "Webpage created"
	  			redirect_to webpage
	  		end
	  		f.json do
	  			render json: webpage, status: created, location: webpage
	  		end
	  	else
	  		f.html do
		  		flash[:danger] = [webpage.errors.full_messages, bookmark.errors.full_messages].flatten
		  		redirect_to root_url
		  	end
		  	f.json do
		  		render json: webpage.errors, status: :unprocessable_entity
		  	end
	  	end
	  end
  end

  private

  def webpage_params
  	params.require(:webpage).permit(:name)
  end
end
