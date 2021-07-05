require "pry"

# Build a method, get_first_name_of_season_winner, that takes in two arguments,
#  a hash called data (i.e. the data structure described above), 
#  and a season. The method should return the first name of that season's winner. 
#  Hint: you'll need to do some string manipulation to return only the first name of the winning lady.


def get_first_name_of_season_winner(data, season)
  # code here	  
  data[season].each do |contestant| #iterate with each over the data hash
    if contestant["status"] == "Winner" 
      return contestant["name"].split.first #string manipulation 
    end
  end
end

# Build a method, get_contestant_name, that takes in the data hash and an occupation string and returns the name of the woman who has that occupation.

def get_contestant_name(data, occupation)
  # code here	  
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

#Build a method, count_contestants_by_hometown, that takes in two arguments––the data hash and a string of a hometown. This method should return a counter of the number of contestants who are from that hometown.

def count_contestants_by_hometown(data, hometown) # 2 arguments data hash and hometown string.
  # code here	  
  counter = 0 # set counter to 0 
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter

end

# Build a method get_occupation, that takes in two arguments––the data hash and a string of a hometown. It returns the occupation of the first contestant who hails from that hometown.


def get_occupation(data, hometown)
  # code here	  
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end


# Build a method, get_average_age_for_season, that takes in two arguments––the data hash and a string of a season. Iterate through the hash and return the average age of all of the contestants for that season.


	def get_average_age_for_season(data, season)
  # code here	  
  age_total = 0
  num_contestants = 0
  data[season].each do |contestant|
    age_total += contestant["age"].to_f # to float. 
    num_contestants += 1
  end
  (age_total / num_contestants).round(0)
end