require 'spec_helper'

describe ReviewsController do

	render_views
	
	let(:valid_rating) {
		{
			:email 		=> 'sample@me.com',
			:lcbo_id	=> 12345,
			:rating		=> 55,
			:comment	=> 'This bottle gets me high! Recommend it!'
		}
	}

	it "should save the submitted rating" do
	  post :create, rating: valid_rating
	  JSON.parse(response.body).should == { 'status' => 'OK', 'message' => 'Review saved successfully!'}
	end

	it "should not let the review to be saved if lcbo_id is non numeric" do
		valid_rating['lcbo_id'] = 'some string'
	  post :create, rating: valid_rating
	  JSON.parse(response.body).should == { 'status' => 'FAILED', 'message' => 'Something went wrong with your submission!'}
	end

	it "should not let the review to be saved if score is non numeric" do
	 	valid_rating['rating'] = 'some string'
	  post :create, rating: valid_rating
	  JSON.parse(response.body).should == { 'status' => 'FAILED', 'message' => 'Something went wrong with your submission!'}
	end

	it "should not let the review to be saved if score is beyond hundred" do
	  valid_rating['rating'] = 122
	  post :create, rating: valid_rating
	  JSON.parse(response.body).should == { 'status' => 'FAILED', 'message' => 'Something went wrong with your submission!'}
	end

end