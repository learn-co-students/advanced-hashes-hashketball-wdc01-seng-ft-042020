require './hashketball.rb'
# Write your code here!
def game_hash()

 {
  :home => {:team_name => "Brooklyn Nets", :colors => ["Black", "White"], :players => [{:player_name =>"Alan Anderson" ,:number => 0,:shoe => 16,:points => 22,:rebounds =>12,:assists => 12,:steals => 3,:blocks =>1 ,:slam_dunks => 1},
  {:player_name =>"Reggie Evans",:number => 30,:shoe => 14,:points => 12,:rebounds => 12,:assists => 12,:steals => 12,:blocks =>12 ,:slam_dunks =>7},
  {:player_name =>"Brook Lopez",:number => 11,:shoe => 17,:points => 17,:rebounds => 19,:assists => 10,:steals => 3,:blocks => 1,:slam_dunks => 15},
  {:player_name => "Mason Plumlee" ,:number => 1,:shoe => 19,:points => 26,:rebounds => 11,:assists => 6,:steals => 3,:blocks => 8,:slam_dunks => 5},
  {:player_name =>"Jason Terry",:number => 31,:shoe => 15,:points => 19,:rebounds => 2,:assists => 2,:steals => 4,:blocks => 11,:slam_dunks => 1}

  ]},

:away =>{:team_name => "Charlotte Hornets", :colors => ["Turquoise", "Purple"], :players => [{:player_name =>"Jeff Adrien",:number => 4,:shoe => 18,:points => 10,:rebounds => 1,:assists => 1,:steals => 2,:blocks =>7,:slam_dunks => 2},
{:player_name =>"Bismack Biyombo",:number => 0,:shoe => 16,:points => 12,:rebounds => 4,:assists => 7,:steals => 22,:blocks => 15,:slam_dunks => 10},
{:player_name =>"DeSagna Diop",:number => 2,:shoe => 14,:points => 24,:rebounds => 12,:assists => 12,:steals => 4,:blocks => 5,:slam_dunks => 5},
{:player_name =>"Ben Gordon",:number => 8,:shoe => 15,:points => 33,:rebounds => 3,:assists => 2,:steals => 1,:blocks => 1,:slam_dunks => 0},
{:player_name =>"Kemba Walker",:number => 33,:shoe => 15,:points => 6,:rebounds => 12,:assists => 12,:steals => 7,:blocks => 5,:slam_dunks => 12}

]}

}

end

#=======================================
require 'pry'
def num_points_scored(team_member_name)
  tournement = game_hash()
   tournement.each do |k,v|
 i=0
 while i <tournement[k][:players].length do

    if tournement[k][:players][i][:player_name] == team_member_name
    return tournement[k][:players][i][:points]
     #binding.pry
    end
  i+=1
   end
 end

   #tournement[k][:players][0][:points]
end

#=====================================================
require 'pry'
def shoe_size (name_of_team_member)
 tournement = game_hash()
 tournement.each do |k,v|
   i=0
 while i <tournement[k][:players].length do

    if tournement[k][:players][i][:player_name] == name_of_team_member
    return tournement[k][:players][i][:shoe]
      end
     i+=1
     #binding.pry
    end

   end
end

#===========================================================

require 'pry'
def team_colors(crew_mane)
  tournement = game_hash()
  tournement.each do |k,v|

    if tournement[k][:team_name] == crew_mane

      return tournement[k][:colors]
    #binding.pry
     end
  end
  tournement[k][:colors]
end


#======================================================
require 'pry'

def team_names()
  tournement = game_hash()
  total_team_name= []
  tournement.each do |k,v|
    tournement[k][:team_name]
  total_team_name<< tournement[k][:team_name]

   #binding.pry
    end

    total_team_name
end

#===============================================
def player_numbers(equipe_name)
tournement = game_hash()
jersey_numbers = []
tournement.each do |k,v|
if tournement[k][:team_name] == equipe_name
  jersey_numbers<< tournement[k][:players][0][:number]
  jersey_numbers<< tournement[k][:players][1][:number]
  jersey_numbers<< tournement[k][:players][2][:number]
  jersey_numbers<< tournement[k][:players][3][:number]
  jersey_numbers<< tournement[k][:players][4][:number]
  #binding.pry
      end
   end
   jersey_numbers
end


#=================================================
require 'pry'
def player_stats(team_player_name)
tournement = game_hash()
team_player_name_stat = {}
tournement.each do |k,v|
tournement[k][:players].each do |each_player|
     if each_player[:player_name] == team_player_name
     team_player_name_stat = each_player
     team_player_name_stat.delete(:player_name)
   end
    #binding.pry
 end

end
  team_player_name_stat
end

#=================================================

require 'pry'
def big_shoe_rebounds

  larger_shoe_size = 0
  player_rebounds = 0
  game_hash.each do |k,v|
  v[:players].each do |player_hash|
    if player_hash[:shoe]>larger_shoe_size
      larger_shoe_size = player_hash[:shoe]
      player_rebounds = player_hash[:rebounds]
    end
    #i=0
    #while i<tournement[k][:players].length do
    # if larger_shoe_size == nil || tournement[k][:players][i][:shoe] > larger_shoe_size
    #     larger_shoe_size = tournement[k][:players][i][:shoe]
    #     player_hash = tournement[k][:players][i]
    #     tournement[k][:players][i][:shoe]
    #     tournement[k][:players][i][:rebounds]

      end
      #i+=1
    end
    player_rebounds
    end
  #end


#====================
#def big_shoe_rebounds
#tournement = game_hash
#shoe_size = []

#larger_shoe_size = nil
#player_hash = nil
# while
 #if larger_shoe_size == nil || tournement[k][:players][i][:shoe] > larger_shoe_size
       #larger_shoe_size = tournement[k][:players][i][:shoe]
       #player_hash = tournement[k][:players][i]
      # binding.pry
     #end
