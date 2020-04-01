# Write your code here!
def game_hash
  stats = {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {player_name: "Alan Anderson",
        number: 0,
        shoe: 16,
        points: 22,
        rebounds: 12,
        assists: 12,
        steals: 3,
        blocks: 1,
        slam_dunks: 1},

        {player_name: "Reggie Evans",
        number: 30,
        shoe: 14,
        points: 12,
        rebounds: 12,
        assists: 12,
        steals: 12,
        blocks: 12,
        slam_dunks: 7},

        {player_name: "Brook Lopez",
        number: 11,
        shoe: 17,
        points: 17,
        rebounds: 19,
        assists: 10,
        steals: 3,
        blocks: 1,
        slam_dunks: 15},

        {player_name: "Mason Plumlee",
        number: 1,
        shoe: 19,
        points: 26,
        rebounds: 11,
        assists: 6,
        steals: 3,
        blocks: 8,
        slam_dunks: 5},

        {player_name: "Jason Terry",
        number: 31,
        shoe: 15,
        points: 19,
        rebounds: 2,
        assists: 2,
        steals: 4,
        blocks: 11,
        slam_dunks: 1},
        ]
  },
  away: {team_name: "Charlotte Hornets",
    colors: ["Turquoise", "Purple"],
    players: [
      {player_name: "Jeff Adrien",
      number: 4,
      shoe: 18,
      points: 10,
      rebounds: 1,
      assists: 1,
      steals: 2,
      blocks: 7,
      slam_dunks: 2},

      {player_name: "Bismack Biyombo",
      number: 0,
      shoe: 16,
      points: 12,
      rebounds: 4,
      assists: 7,
      steals: 22,
      blocks: 15,
      slam_dunks: 10},

      {player_name: "DeSagna Diop",
      number: 2,
      shoe: 14,
      points: 24,
      rebounds: 12,
      assists: 12,
      steals: 4,
      blocks: 5,
      slam_dunks: 5},

      {player_name: "Ben Gordon",
      number: 8,
      shoe: 15,
      points: 33,
      rebounds: 3,
      assists: 2,
      steals: 1,
      blocks: 1,
      slam_dunks: 0},

      {player_name: "Kemba Walker",
      number: 33,
      shoe: 15,
      points: 6,
      rebounds: 12,
      assists: 12,
      steals: 7,
      blocks: 5,
      slam_dunks: 12},
      ]
    }
  }
  return stats
end #stats = {home: {team_name: "", colors: ["",""],
#players: [{player_name:, number:, shoe:, points:, rebound:, assists:, steals:, blocks:, slam_dunks:} . . . }

def home_or_away(player_name)
    #returns whether the player is home or away. assumes valid input
    #Michael Jordan, then, is :away!
    game_hash[:home][:players].each do |player_hash|
        if player_hash[:player_name] == player_name
            return :home
        end
    end
    return :away
end

def num_points_scored (player_name)
    team = home_or_away(player_name)
    game_hash[team][:players].each do |player_hash|
        if player_hash[:player_name] == player_name
            return player_hash[:points]
        end
    end
end

def shoe_size(player_name)
    team = home_or_away(player_name)
    game_hash[team][:players].each do |player_hash|
        if player_hash[:player_name] == player_name
            return player_hash[:shoe]
        end
    end
end

def team_colors(team_name)
    game_hash[:home][:team_name] == team_name ? game_hash[:home][:colors] : game_hash[:away][:colors]
end

def team_names
    return [game_hash[:home][:team_name], game_hash[:away][:team_name]]
end

def player_numbers(team_name)
    jersey_array = []
    if team_name == game_hash[:home][:team_name]
        game_hash[:home][:players].each {|player_hash| jersey_array << player_hash[:number]}
    else
        game_hash[:away][:players].each {|player_hash| jersey_array << player_hash[:number]}
    end
    return jersey_array
end

def player_stats(player_name)
    stat_hash = {}
    team = home_or_away(player_name)
    desired_stats = [:number, :shoe, :points, :rebounds, :assists, :steals, :blocks, :slam_dunks]
    game_hash[team][:players].each do |player_hash|
        if player_hash[:player_name] == player_name
            desired_stats.each do |stat|
                stat_hash[stat] = player_hash[stat]
            end
        end
    end
    return stat_hash
end

def big_shoe_rebounds
    #1. find player with largest shoe
    big_boy = ["", 0]
    game_hash.each_pair do |home_or_away, team_hash|
        team_hash[:players].each do |player_hash|
            if player_hash[:shoe] > big_boy[1]
                big_boy = [player_hash[:player_name], player_hash[:shoe]]
            end
        end
    end
    return player_stats(big_boy[0])[:rebounds]
end


##---------------------BONUS--------------------------BONUS-------------------##

def most_points_scored
    highest_scorer = ["", 0]
    game_hash.each_pair do |home_or_away, team_hash|
        team_hash[:players].each do |player_hash|
            if player_hash[:points] > highest_scorer[1]
                highest_scorer = [player_hash[:player_name], player_hash[:points]]
            end
        end
    end
    return highest_scorer[0]
end

def winning_team
    totals = {home: 0, away: 0}
    game_hash[:home][:players]

    totals.each_pair do |team, score|
        game_hash[team][:players].each do |player_hash|
            totals[team] += player_hash[:points]
        end
    end

    if totals[:home] == totals[:away]
        return "TIE GAME"
    else
        totals[:home] > totals[:away] ? game_hash[:home][:team_name] : game_hash[:away][:team_name]
    end
end

def player_with_longest_name
    nomen = ""
    game_hash.each_pair do |home_or_away, team_hash|
        team_hash[:players].each do |player_hash|
            if player_hash[:player_name].length > nomen.length
                nomen = player_hash[:player_name]
            end
        end
    end
    return nomen
end

##--------------------------SUPER--BONUS--------------------------------------##

def long_name_steals_a_ton?
    thief = ["", 0]
    game_hash.each_pair do |home_or_away, team_hash|
        team_hash[:players].each do |player_hash|
            if player_hash[:steals] > thief[1]
                thief = [player_hash[:player_name], player_hash[:steals]]
            end
        end
    end
    thief[0] == player_with_longest_name ? true : false
end

p long_name_steals_a_ton?
