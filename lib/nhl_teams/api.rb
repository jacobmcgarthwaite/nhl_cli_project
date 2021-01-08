# resonspible making a call to api
# getting the data neccessary
# creating new RUBY  OBJECTS WITH THAT DATA => Object oriented

class API 

    def self.get_data
        response = RestClient.get('https://statsapi.web.nhl.com/api/v1/teams')
        teams_array = JSON.parse(response)
       # binding.pry
        teams_array.each do |team|
           Team.new(team)
           
        end
        
    end
        
            

end


# ["name"], team["location"], team["abbreviation"], team["conference"], team["division"]