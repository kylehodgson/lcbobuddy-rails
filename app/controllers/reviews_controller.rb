class ReviewsController < ApplicationController

	# some comment
	def create
		@review = Review.new(params[:review])
		if @review.save
			render 'create.json'
		else
			render 'errors.json'
		end
	end

end
