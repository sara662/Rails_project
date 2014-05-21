class Room < ActiveRecord::Base
	#has_many :roomreserves
	belongs_to :branch
end
