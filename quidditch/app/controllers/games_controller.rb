class GamesController < ApplicationController
  def home
  end

  def start
    @gryffindor_players = Team.find_by_name("Gryffindor").players
    @hufflepuff_players = Team.find_by_name("Hufflepuff").players
  end

  def update_statistics
    params.each do |key, value|
      if key.include? "winner"
        if value != "nil"
          team_id = value.to_i + 1
          @team = Team.find(team_id)
          total_wins = @team.total_wins + 1
          @team.update_column(:total_wins, total_wins)
        end
      elsif key.include? "player"
        @player = Player.find_by_name(key.split("_")[1])
        total_score = @player.total_lifetime_score + value.to_i
        @player.update_column(:total_lifetime_score, total_score)
      end  #end of if key.include? "winner"
    end  #end of params.each do |key, value|
  end  # end of def
  
  def show_statistics
    @teams = Team.all
    @players = Player.all
  end
  
end
