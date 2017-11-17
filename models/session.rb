class Session < ActiveRecord::Base
	belongs_to :pose
	belongs_to :teacher
end
