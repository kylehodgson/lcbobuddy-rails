class RenameTableReviewToReviews < ActiveRecord::Migration
  def up
  	rename_table :review, :reviews
  end

  def down
  	rename_table :reviews, :review
  end
end
