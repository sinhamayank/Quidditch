teams = Team.create([{name: "Gryffindor"},{name: "Hufflepuff"}])  #creating two teams
#players name array for different teams 
gryffindor_players = ["Harry","Charlie","George","Ron"]  
hufflepuff_players = ["Tamsin","Herbert","Cadwallader","Cedric"]
#creating players for each team
teams.each do |team|
  if team.name.include? "Gryffindor"
    gryffindor_players.each do |player_name|
      team.players.create({name: player_name, total_lifetime_score: 0, team_id: team.id})
    end
  else
    hufflepuff_players.each do |player_name|
      team.players.create({name: player_name, total_lifetime_score: 0, team_id: team.id})
    end    
  end  #end for if team.name.include? "Gryffindor"
end  # end for teams.each do |team|
