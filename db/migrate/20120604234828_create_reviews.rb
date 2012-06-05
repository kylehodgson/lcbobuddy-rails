class CreateReviews < ActiveRecord::Migration
  def change
    create_table :review do |t|
    	t.string 	:email
    	t.integer :score
    	t.text		:comment
    	t.integer	:lcbo_id
      t.timestamps
    end
  end
end
