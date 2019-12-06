class VisitorsController < ApplicationController
	# GET
	def index
		@visitors = Visitor.all
	end

	# GET
	def show
		@visitor = Visitor.find(params[:id])
	end

	# GET
	def new
		@visitor = Visitor.new
	end

	# POST
	def create
		@visitor = Visitor.new(strong_params)
		if @visitor.save
			redirect_to new_visitor_path notice: 'Visitor Successfully Created'
		else
			render 'new'
		end

	end

	# GET
	def edit 
		@visitor = Visitor.find(params[:id])
	end

	# PATCH
	def update
		@visitor = Visitor.find(params[:id])

		if @visitor.update(strong_params)
			redirect_to visitors_path notice: 'Visitor Successfylly Updated'
		else
			render 'edit'
		end
	end

	# DELETE
	def destroy
		@visitor = Visitor.find(params[:id])
			@visitor.destroy
		redirect_to visitors_path
	end
		
	private 

	def strong_params
		params.require(:visitor).permit(:name, :visitor_cardnumber)
	end

end