class Review < ActiveRecord::Base

  belongs_to :product

	validates_numericality_of :lcbo_id

	validates :rating, :numericality => { :only_integer => true, :greater_than => 0, :less_than_or_equal_to => 100}

end
