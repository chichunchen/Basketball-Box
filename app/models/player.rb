class Player < ActiveRecord::Base
	after_create :set_default_association

	validates :number, :name, :presence => true	
	validates :number, :inclusion => { :in => 0..99, :message => "請選擇號碼0至99號" }
	validates :number, :uniqueness => { scope: :team, message: "同一隊中不能有一樣的號碼" }
	
	belongs_to :team
	has_one :statistic, dependent: :destroy

	private 

	def set_default_association
	  self.create_statistic
	end
end
