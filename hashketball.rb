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




def big_shoe_rebounds
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
stats_array
start = stats_array.index("Mason Plumlee")
        rebounds_position = start + 4
         number_of_rebounds = stats_array[rebounds_position]
number_of_rebounds
end



def player_stats(name_of_player)
   game_hash
answer = {}
leveltwo_array = []
          game_hash.reduce({}) do |memo, (home_away, second_layer)|
 #puts memo #empty hash
               second_layer.reduce({}) do |memo, (key, value)|
# key # team_color_players
 #value #nets_horns_bw_tp_arrayofplayers
             if value == "Brooklyn Nets"   
      elsif value == "Charlotte Hornets" 
     else
       leveltwo_array << value 
end
    
memo
end
memo
end
     leveltwo_array.delete_at(0)
           leveltwo_array.delete_at(1)

     leveltwo_array.flatten!

      leveltwo_array.each_index do |index|
if name_of_player == leveltwo_array[index][:player_name]   
answer = leveltwo_array[index]
         puts answer

end
end
answer
end

  #returns a hash of player stats








def player_numbers(name_of_team)
  game_hash
nets_hash = {}
hornets_hash = {}
teams_array = []
nets_number_array = []
hornets_number_array = []
leveltwo_array = []
          game_hash.reduce({}) do |memo, (home_away, second_layer)|
 #puts memo #empty hash
               second_layer.reduce({}) do |memo, (key, value)|
# key # team_color_players
 # value #nets_horns_bw_tp_arrayofplayers
        leveltwo_array << {key => value}    
    
memo
end
memo
end

leveltwo_array.delete_at(1)
leveltwo_array.delete_at(3)

         leveltwo_array.each do |teamnplayers, nothin|
             teamnplayers.each do |twolevel, threelevel|
      
           teams_array << threelevel
           
       end
  end 
   nets_hash = {teams_array[0] => teams_array[1]}      #nets
       hornets_hash = {teams_array[2] => teams_array[3]} #hornets
              
nets_hash.each do | team_n, stat| 
                        
            #team_n #team names
                #stat # stats
                      stat.each do | stats, nothing| 
                 #stats # stats
#value2 is nothing
                       stats.each do | stat_key, value_nums| 
                       if stat_key == :number
            nets_number_array  << value_nums
end
end
              end
              end
                  
             hornets_hash.each do | team_n, stat|           
            #team_n #team names
                #stat # stats
        
                      stat.each do | stats, nothing| 
                 #stats # stats
#value2 is nothing
                       stats.each do | stat_key, value_nums| 
                       if stat_key == :number
            hornets_number_array  << value_nums
end
end
              end
              end
if name_of_team == "Brooklyn Nets"
                  return nets_number_array 
else name_of_team == "Charlotte Hornets"     
            return hornets_number_array 

end
end
#returns an array of jersey number for that team







def team_names
 game_hash
  team_names_array = []
#team_colors_hash = {}
leveltwo_array = []
          game_hash.reduce({}) do |memo, (home_away, second_layer)|
 #puts memo #empty hash
 
               second_layer.reduce({}) do |memo, (key, value)|
# key # team_color_players
 # value #nets_horns_bw_tp_arrayofplayers
        leveltwo_array << {key => value}    
memo
end
memo
end
leveltwo_array.uniq!
leveltwo_array.delete_at(2)
leveltwo_array.pop

         leveltwo_array.each do |k , v|
          k.each do |name_color , team_color_v|
        
           team_names_array << team_color_v   
end
end
team_names_array.delete_at(1)
team_names_array.pop
    team_names_array
 #returned an Array of the team names. 
end








def team_colors(name_of_team)
  game_hash
  team_color_array = []
team_colors_hash = {}
leveltwo_array = []
          game_hash.reduce({}) do |memo, (home_away, second_layer)|
 #puts memo #empty hash
 
               second_layer.reduce({}) do |memo, (key, value)|
# key # team_color_players
 # value #nets_horns_bw_tp_arrayofplayers
        leveltwo_array << {key => value}    
memo
end
memo
end
leveltwo_array.uniq!
leveltwo_array.delete_at(2)
leveltwo_array.pop

         leveltwo_array.each do |k , v|
          k.each do |name_color , team_color_v|
        
           team_color_array << team_color_v   
end
end
team_colors_hash = {team_color_array[0] => team_color_array[1], team_color_array[2] => team_color_array[3]}

team_colors_hash[name_of_team]
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
        shoe_position = start + 2
         shoe_size = stats_array[shoe_position]
shoe_size
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