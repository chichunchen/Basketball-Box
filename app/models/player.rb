class Player < ActiveRecord::Base
	validates :number, :name, :presence => true	
	validates :number, :inclusion => { :in => 0..99, :message => "請選擇號碼0至99號" }

	belongs_to :team
end
