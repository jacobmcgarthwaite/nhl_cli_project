# what do you want your object model to look like

class Team

    @@all = []

    attr_accessor :name #, :location, :abbreviation, :conference, :division

        def initialize(name)#, location, abbreviation, conference, division)
          @name = name
           #@location = location
           #@abbreviation = abbreviation
           #@conference = conference
           #@division = division
           save
        end
       

        def save
            @@all << self
        end

        def self.all
            @@all
        end

        # a method that accepts the teams name and finds the object with that name
        def self.find_team(team_name)
            self.all.find do |team|
                team.name == team_name
            end
        end
end