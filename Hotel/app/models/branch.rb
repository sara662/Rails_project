class Branch < ActiveRecord::Base
	belongs_to :myhotel
	has_many :rooms
	
end
