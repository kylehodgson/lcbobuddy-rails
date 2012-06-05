class ReviewsController < ApplicationController

	def create
		@review = Review.new(params[:rating])
		if @review.save
			render 'create.json.jbuilder'
		else
			respond
		end
	end

end
