class Game < ActiveRecord::Base
	after_create :set_default_association

	validates :rival, :presence => true

	belongs_to :team
	belongs_to :category

	has_many :game_statistics

	def set_default_association
		# players game_statistic db create automatically
	end
end
