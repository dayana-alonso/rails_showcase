class CinemasController < ApplicationController
	def index
		@cinemas = Cinema.all
	end

	def new
		@cinema = Cinema.new
	end

	def show
		@cinema = Cinema.find(params[:id])
	end

	def create
		@cinema = Cinema.new(strong_params)
		if @cinema.save
			redirect_to cinemas_path, notice: "New Cinema successfully created"
		else 
			render "new"
		end
	end

	def delete
	end

	def strong_params
		params.require(:cinema).permit(:visitor_id, :cinema_name, :address, :postcode, :telephone)
	end

end

