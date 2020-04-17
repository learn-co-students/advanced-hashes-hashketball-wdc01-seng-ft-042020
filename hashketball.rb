# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end


def team_colors(name_of_team)
  game_hash
  if name_of_team = "Brooklyn Nets"
    answer = ["Black", "White"] 
  elsif name_of_team = "Charlotte Hornets"
    answer =  ["Turquoise", "Purple"]
  answer
  #returns team colors
end
end




def shoe_size(name_of_player)
 game_hash
  stats_array = []
          game_hash.reduce({}) do |memo, (home_away, second_layer)|
 #puts memo #empty hash
               second_layer.reduce({}) do |memo, (key, value)|
# key # team_color_players
# value #nets_horns_bw_tp_arrayofplayers
    if value == "Brooklyn Nets"   
      elsif value == "Charlotte Hornets" 
     else
  value.each do |key2, value2|
#key2 # black, white, names and stats
#value2 #=nothing

   if key2 == "White"   
      elsif key2 == "Black" 
         elsif key2 == "Turquoise"
             elsif key2 == "Purple"
     else
       key2.each do |key3, value3|
                  stats_array << value3
end
end
end
end
memo
end
memo
end
     start = stats_array.index(name_of_player)
        points_position = start + 2
         player_points = stats_array[points_position]
puts player_points
player_points
end


def num_points_scored(name_of_player)
  game_hash
  stats_array = []
          game_hash.reduce({}) do |memo, (home_away, second_layer)|
 #puts memo #empty hash
               second_layer.reduce({}) do |memo, (key, value)|
# key # team_color_players
# value #nets_horns_bw_tp_arrayofplayers
    if value == "Brooklyn Nets"   
      elsif value == "Charlotte Hornets" 
     else
  value.each do |key2, value2|
#key2 # black, white, names and stats
#value2 #=nothing

   if key2 == "White"   
      elsif key2 == "Black" 
         elsif key2 == "Turquoise"
             elsif key2 == "Purple"
     else
       key2.each do |key3, value3|
                  stats_array << value3
end
end
end
end
memo
end
memo
end
     start = stats_array.index(name_of_player)
        points_position = start + 3
         player_points = stats_array[points_position]
puts player_points
player_points
end
  #returns number of points scored


# Write code here