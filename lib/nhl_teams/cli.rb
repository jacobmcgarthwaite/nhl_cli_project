# responsible for communication between user and data

class CLI

    # an entryway method

    def start
            puts " Welcome to the official NHL team's documentation."
            puts " Let's start with your name: "
            API.get_data
            binding.pry
            greet(user_input)
    end

    def user_input
        gets.strip
    end

    def greet(name)
        puts " Hello #{name}, would you like to view a list of the current NHL teams?"
        puts " Use 'yes' to see the list, Use 'exit' at any time to exit the program!"
        menu
    end

    # print out a list of all nhl teams
    def nhl_team_list
        ["Bruins", "Sabres", "Red Wings"].each.with_index(1) do |team, i|
            puts "#{i}. #{team}"
        end
        nhl_team_selection
    end

    def goodbye
        puts "Thanks for stopping in! Goodbye!"
    end

    def invalid
        puts "Hmm, that doesn't seem to be a valid option, try again?"
        menu
    end
    # based on user selection, either show a list of the nhl teams,
    # give an error message
    # exit

    def nhl_team_selection
        puts "Select a team for more details."

        selection = user_input

        #puts "#{selection}"
        Team.find_team(selection)

        # query our NHL class to find the teams detail
    end

    def menu
        selection = user_input

        if selection == 'yes'
            # print the NHL team list
            nhl_team_list
            menu
        elsif selection == 'exit'
            # give the user a goodbye message
            goodbye
        else
            # invalid output, make user select again
            invalid
        end
    end

end