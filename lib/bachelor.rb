def get_first_name_of_season_winner(data, season)
  # looking for { status: "Winner" }
  # data[season] is an array of hashes
  winner_hash = data[season].find { |contestant| contestant.fetch('status') == 'Winner' }
  winner_hash['name'].split[0]
end

def get_contestant_name(data, occupation)
  occupation_hash = all_contestants(data).find { |contestant| contestant.fetch('occupation') == occupation }
  occupation_hash['name']
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end

def all_contestants(data)
  all_contestants = []
  data.each do |season, contestant_arr|
    all_contestants += contestant_arr
  end
  all_contestants
end
  