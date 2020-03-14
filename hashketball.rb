# Write your code here!

def game_hash()
  
  hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => [{
        :player_name => "Alan Anderson",
        :number => 0,
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1
      },
      {
        :player_name => "Reggie Evans",
        :number => 30,
        :shoe => 14,
        :points => 12,
        :rebounds => 12,
        :assists => 12,
        :steals => 12,
        :blocks => 12,
        :slam_dunks => 7
      },
      {
        :player_name => "Brook Lopez",
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15
        },
      {
        :player_name => "Mason Plumlee",
        :number => 1,
        :shoe => 19,
        :points => 26,
        :rebounds => 11,
        :assists => 6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5
      },
      {
        :player_name => "Jason Terry",
        :number => 31,
        :shoe => 15,
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1
      }]
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => [{
        :player_name => "Jeff Adrien",
        :number => 4,
        :shoe => 18,
        :points => 10,
        :rebounds => 1,
        :assists => 1,
        :steals => 2,
        :blocks => 7,
        :slam_dunks => 2
      },
      {
        :player_name => "Bismack Biyombo",
        :number => 0,
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 22,
        :blocks => 15,
        :slam_dunks => 10
      },
      {
        :player_name => "DeSagna Diop",
        :number => 2,
        :shoe => 14,
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5
      },
      {
        :player_name => "Ben Gordon",
        :number => 8,
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0
      },
      {
        :player_name => "Kemba Walker",
        :number => 33,
        :shoe => 15,
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 7,
        :blocks => 5,
        :slam_dunks => 12
      }]
    }
  }
  
  return hash
end

def num_points_scored(name)
   hash = game_hash()
    
    hash[:home][:players].each do |player|
      if (player[:player_name] == name)
        return player[:points]
      end
    
    end
    hash[:away][:players].each do |player|
      if (player[:player_name] == name)
        return player[:points]
      end
    end
    
  
end

def shoe_size(name)
  
  hash = game_hash()
  
  hash[:home][:players].each do |player|
    if (player[:player_name] == name)
      return player[:shoe]
    end
  end
    
  hash[:away][:players].each do |player|
    if (player[:player_name] == name)
      return player[:shoe]
    end
  end
    
  
  
end

def team_colors(team)
  
   hash = game_hash()
    
    hash[:home].each do |key, value|
      if (value == team)
        return hash[:home][:colors]
      end
    end
      
    hash[:away].each do |key, value|
      if (value == team)
        return hash[:away][:colors]
      end
    end
      
end

def team_names()
    
    hash = game_hash()
    teams_array = []
    
    hash.each do |key, value| 
        value.each do |key, value|
            if (key == :team_name)
                teams_array << value
            end
       end
    end
    return teams_array
  end

 def players_array (hash, team)
    #helper function to simplify NDS traversal
    hash.each do |key, value|
        if (value[:team_name]) == team
            return value[:players]
        end
    end
    return []
  end

  def player_numbers(team)
    
    number_array = []
    hash = game_hash()

    players_array = players_array(hash, team)

    players_array.each do |player|
        number_array << player[:number]
    end
    return number_array
  end

def player_hash_formater(player)
#helper function for Player formatting
hash = {}

    player.each do |key, value|

        if (key != :player_name)
            hash[key] = value
        end

    end

return hash
end


  def player_stats(name)
    
    hash = game_hash()
    player_hash = {}

    hash.each do |key, value|
        value[:players].each do |player|
            if (player[:player_name] == name)
                player_hash = player_hash_formater(player)
            end
        end
    end

    return player_hash
    
  end
  

 def biggest_shoe()
    hash = game_hash()
    player_hash = {}
    biggest_shoe_size = 0

    hash.each do |key, value|
        value[:players].each do |player|
            if (player[:shoe] > biggest_shoe_size)
                player_hash = player
                biggest_shoe_size = player[:shoe]
            end
        end
    end

    return player_hash
  end



  def big_shoe_rebounds()
    
    big_shoe_player_hash = biggest_shoe()
    return big_shoe_player_hash[:rebounds]

  end
  
   
  def most_points_scored()
    #bonus
    hash = game_hash()
    player_hash = {}
    most_points = 0

    hash.each do |key, value|
        value[:players].each do |player|
            if (player[:points] > most_points)
                player_hash = player
                most_points = player[:shoe]
            end
        end
    end

    return player_hash[:player_name]
  end

  
  def winning_team()
    hash = game_hash()
    team_hash = {}

    hash.each do |key, value|
        points_scored = 0
        value[:players].each { |player| points_scored += player[:points] }
        team_hash[value[:team_name]] = points_scored
    end

    winner = ""
    high_score = 0
    team_hash.each do |key, value|
        if (value > high_score)
            winner = key
            high_score = value
        end
    end

    return winner

  end


  def search_longest_name()

    hash = game_hash()
    player_hash = {}
    length_of_longest_name = 0

    hash.each do |key, value|
        
        value[:players].each do |player| 
            
            if (player[:player_name].length > length_of_longest_name)
                player_hash = player
                length_of_longest_name = player[:player_name].length
            end
        end 
    end

    return player_hash

  end



  def player_with_longest_name()

    player_hash = search_longest_name()

    return player_hash[:player_name]
  end
  

def long_name_steals_a_ton?()

    hash = game_hash()
    longest_name_player_hash = search_longest_name()
    
    hash.each do |key, value|
        
        value[:players].each do |player| 
            
            if (player[:steals] > longest_name_player_hash[:steals] && player[:player_name] != longest_name_player_hash[:player_name])
                return false
            end
        end 
    end


    return true
end



