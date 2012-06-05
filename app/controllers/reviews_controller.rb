class ReviewsController < ApplicationController


	def create
		@review = Review.new(params[:rating])
		if @review.save
			render 'create.json'
		else
			render 'errors.json'
		end
	end

end
