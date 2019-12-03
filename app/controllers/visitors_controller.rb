class VisitorsController < ApplicationController
	def index
	end

	def new
		@visitor = Visitor.new
	end

	# def create
	# end
end