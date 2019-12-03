class VisitorsController < ApplicationController
	def index
	end

	def new
		@visitor = Visitor.new
	end

	def create
		@visitor = Visitor.new(strong_params)
		if @visitor.save
			redirect_to new_visitor_path
		end
	end

	def edit
		@visitor = Visitor.find(params[:id])
	end

	def strong_params
		params.require(:visitor).permit(:name, :visitor_cardnumber)
	end

end