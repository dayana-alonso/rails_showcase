class CinemasController < ApplicationController
	def index
		@cinemas = Cinemas.all
	end

	def new
		@cinema = Cinema.new
	end

	def show
		@cinema = Cinema.find(params[:id])
	end

	def create
		@cinema = Cinema.new
		if @cinema.save

	end

	def delete
	end

	def strong_params
		params.require(:cinema).permit(:visitor_id, :cinema_name, :address, :postcode, :telephone)
	end

end

