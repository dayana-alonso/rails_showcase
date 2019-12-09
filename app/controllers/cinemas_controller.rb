class CinemasController < ApplicationController
	def index
		@cinemas = Cinema.all
	end

	def show
		@cinema = Cinema.find(params[:id])
	end

	def new
		@cinema = Cinema.new
	end

	def create
		@cinema = Cinema.new(strong_params)
		if @cinema.save
			redirect_to cinemas_path, notice: "New Cinema successfully created"
		else 
			render "new"
		end
	end

	def edit
		@cinema = Cinema.find(params[:id])
	end

	def update
		@cinema = Cinema.find(params[:id])
		if @cinema.update(strong_params)
			redirect_to cinemas_path, notice: "Cinema edit successfully"
		else
			render 'edit'
		end
	end

	def destroy
	@cinema = Cinema.find(params[:id])
		@cinema.destroy
			redirect_to cinemas_path notice: "Cinema successfully deleted"
	end

	def strong_params
		params.require(:cinema).permit(:visitor_id, :cinema_name, :address, :postcode, :telephone)
	end

end

