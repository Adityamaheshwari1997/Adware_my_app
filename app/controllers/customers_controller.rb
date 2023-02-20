class CustomersController < ApplicationController
	def index
		@customers  = Customer.all
	end

	def show
		@customers = Customer.find(params[:screen_id])
	end

	def new 
		@customers = Customer.new
	end

	def create
		# binding.pry
		@movie =Movie.find(params[:movie_id])
		# @theater = Theater.find(params[:theater_id])
		@customer = @movie.customers.build(cus_params)
		@customer.save
		redirect_to screens_index_path
	end

	private

		def cus_params
			params.permit(:c_name,:theater_id,:screen_id,:movie_id)
		end
end
