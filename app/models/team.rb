class Team < ActiveRecord::Base
	validates :name, :presence => true

	has_many :players
	has_many :games
end
