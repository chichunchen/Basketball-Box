# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

create_teams = for i in 1..20 do
				Team.create!([name: "隊伍 no.#{i}"])
					for j in 1..12 do
						Player.create!([team_id: "#{i}", number: "#{j}", name: "隊員#{j}"])
					end
				end