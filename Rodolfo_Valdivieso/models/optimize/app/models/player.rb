class Player < ActiveRecord::Base
  belongs_to :team
end


# Not optimize
# players = Player.limit(10).order("RANDOM()")
# players.each do |player|
#   puts player.team.stadium
# end

# Optimized
# players = Player.includes(:team).limit(10).order("RANDOM()")
# players.each do |player|
#   puts player.team.stadium
# end

# Left Join
# Player.includes(:team).where("teams.name = 'Los Angeles Lakers'").references(:team)

# Join
# Player.joins(:team).where("teams.name = 'Los Angeles Lakers'")

#Retrieve all players, then write a program that will loop through each player and display their team name, mascot and stadium. How many queries have we done?
# players = Player.all
# players.each do |player|
#   print "Name: " + player.name + " Team: " +player.team.name + " Mascot: " +player.team.mascot + " Stadium: " +player.team.stadium +"\n"
# end

#Retrieve all players and write a program to loop through each player and their team name, mascot and stadium using .includes. How many queries have we done now?
# players = Player.includes(:team).all
# players.each do |player|
#   print "Name: " + player.name + " Team: " +player.team.name + " Mascot: " +player.team.mascot + " Stadium: " +player.team.stadium + "\n"
# end

#Retrieve all players from the 'Chicago Bulls' by using .includes
# players = Player.includes(:team).where("team_id = ?",Team.where(name:"Chicago Bulls").first.id)
# players.each do |p|
#   print "Name: " + p.name #+ " Team: " +player.team.name + " Mascot: " +player.team.mascot + " Stadium: " +player.team.stadium + "\n"
# end

#Retrieve all players along with the team name that play at the 'Staples Center'
#Player.joins(:team).where("teams.stadium = 'Staples Center'")

#Retrieve all teams that have any player that start their name with the letter 'Z' by using .includes and .joins
#Player.includes(:team).joins(:team).where("players.name like ? " , "#{'Z'}%")
