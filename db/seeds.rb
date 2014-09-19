# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
category = ["聯賽", "大財盃", "系暨盃"]
game_category = category.each { |c| Category.create!([name: c]) }


create_teams = for i in 1..10 do
				Team.create!([name: "隊伍 no.#{i}"])
					for j in 1..10 do
						Player.create!([team_id: "#{i}", number: "#{j}", name: "隊員#{j}"])
						Game.create!([team_id:"#{i}", category_id: "1", rival: "對手#{j}"])
					end
				end