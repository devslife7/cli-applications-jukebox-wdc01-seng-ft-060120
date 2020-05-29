# Add your code here
require 'pry'
#def say_hello(name)
#    "Hi #{name}!"
#end
#
#puts "Enter your name: "
#users_name = gets.strip
#
#puts say_hello(users_name)

def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def list(songs)
    songs.each_with_index do |value, index|
        puts "#{index + 1}. #{value}"
    end
end

def play(songs)
    found_song = false
    puts "Please enter a song name or number:"
    input = gets.strip
    
    songs.each_with_index do |value, index|
        if input == value || input.to_i == index + 1
            puts "Playing #{value}"
            found_song = true
            break
        else
            found_song = false
        end
    end
    if found_song == false
        puts "Invalid input, please try again"
    end
end

def exit_jukebox
    puts "Goodbye"
end

def run(songs)
    exit = false
    
    until exit do
        puts "Please enter a command:"
        input = gets.strip
        
        case input
        when "help"
            help
        when "list"
            list(songs)
        when "play"
            play(songs)
        when "exit"
            exit_jukebox
            exit = true
        else
            puts "Not a valid input, please try again."
        end
    end
end
