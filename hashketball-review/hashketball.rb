require 'pry'

# def game_hash
#   {
#     home: {
#       team_name: "Brooklyn Nets",
#       colors: ["Black", "White"],
#       players: {
#         "Alan Anderson" => {
#           number: 0,
#           shoe: 16,
#           points: 22,
#           rebounds: 12,
#           assists: 12,
#           steals: 3,
#           blocks: 1,
#           slam_dunks: 1
#         },
#         "Reggie Evans" => {
#           number: 30,
#           shoe: 14,
#           points: 12,
#           rebounds: 12,
#           assists: 12,
#           steals: 12,
#           blocks: 12,
#           slam_dunks: 7
#         },
#         "Brook Lopez" => {
#           number: 11,
#           shoe: 17,
#           points: 17,
#           rebounds: 19,
#           assists: 10,
#           steals: 3,
#           blocks: 1,
#           slam_dunks: 15
#         },
#         "Mason Plumlee" => {
#           number: 1,
#           shoe: 19,
#           points: 26,
#           rebounds: 12,
#           assists: 6,
#           steals: 3,
#           blocks: 8,
#           slam_dunks: 5
#         },
#         "Jason Terry" => {
#           number: 31,
#           shoe: 15,
#           points: 19,
#           rebounds: 2,
#           assists: 2,
#           steals: 4,
#           blocks: 11,
#           slam_dunks: 1
#         }
#       }
#     },
#     away: {
#       team_name: "Charlotte Hornets",
#       colors: ["Turquoise", "Purple"],
#       players: {
#         "Jeff Adrien" => {
#           number: 4,
#           shoe: 18,
#           points: 10,
#           rebounds: 1,
#           assists: 1,
#           steals: 2,
#           blocks: 7,
#           slam_dunks: 2
#         },
#         "Bismak Biyombo" => {
#           number: 0,
#           shoe: 16,
#           points: 12,
#           rebounds: 4,
#           assists: 7,
#           steals: 7,
#           blocks: 15,
#           slam_dunks: 10
#         },
#         "DeSagna Diop" => {
#           number: 2,
#           shoe: 14,
#           points: 24,
#           rebounds: 12,
#           assists: 12,
#           steals: 4,
#           blocks: 5,
#           slam_dunks: 5
#         },
#         "Ben Gordon" => {
#           number: 8,
#           shoe: 15,
#           points: 33,
#           rebounds: 3,
#           assists: 2,
#           steals: 1,
#           blocks: 1,
#           slam_dunks: 0
#         },
#         "Brendan Haywood" => {
#           number: 33,
#           shoe: 15,
#           points: 6,
#           rebounds: 12,
#           assists: 12,
#           steals: 22,
#           blocks: 5,
#           slam_dunks: 12
#         }
#       }
#     }
#   }
# end

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
        }, {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        }, {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        }, {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        }, {
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
        }, {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        }, {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        }, {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        }, {
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


def num_points_scored(player_name)

  # Iterate over hash
  # Get players from both teams
  players = find_players
  # Find the player with that name
  player = players.find do |p|
    p[:player_name] == player_name
  end
  # Get the number of points
  player[:points]
end

def find_players
  game_hash.values.map do |team|
    team[:players]
  end.flatten
end

def shoe_size(player_name)
  players = find_players
  player = players.find do |p|
    p[:player_name] == player_name
  end
  player[:shoe]
end

def team_colors(team_name)
  found_team = game_hash.values.find do |team|
    team[:team_name] == team_name
  end
  found_team[:colors]
end


# # EXERCISE:
# # Define a method called get_names that takes an array of instructors
# # and returns just their names.
instructors = [
  {name: 'Noa', hometown: 'Detroit'},
  {name: 'Duke', hometown: 'Grand Rapids'},
  {name: 'Sarah', hometown: 'Sandy Spring'},
  {name: 'Bruce', hometown: 'Chicago'},
  {name: 'Nick', hometown: 'Gregory'}
]

# def get_names(instructors)
#   # array = []
#   # instructors.each do |in|
#   #   array.push(in[:name])
#   # end
#   # array
#   instructors.map do |in|
#     in[:name]
#   end
# end

def long_towns(instructors)
  instructors.select do |instructor|
    instructor[:hometown].length > 7
  end
end

binding.pry

true
# def get_players
#
# end

# select

# find
