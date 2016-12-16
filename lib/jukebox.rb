songs = [
  "Phoenix - 1901", #0
  "Tokyo Police Club - Wait Up", #1
  "Sufjan Stevens - Too Much", #2
  "The Naked and the Famous - Young Blood", #3
  "(Far From) Home - Tiga", #4
  "The Cults - Abducted", #5
  "Phoenix - Consolation Prizes", #6
  "Harry Chapin - Cats in the Cradle",#7
  "Amos Lee - Keep It Loose, Keep It Tight" #8
]

#REMEMBER THAT ARRAY INDEX STARTS FROM 0!!

# The help command should output instructions for the user on how to use the jukebox.
# The list command should output a list of songs that the user can play.
# The play command should ask a user to input a song name or number. It should then output 'Playing Phoenix - 1901' or whatever the song name is.
# If the user types in exit, the jukebox should say goodbye and the program should shut down.

def help #gives instructions to the user
  puts "I accept the following commands:
 help : displays this help message
 list : displays a list of songs you can play
 play : lets you choose a song to play
 exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index| #gives an index to each song from the songs array
  puts "#{index+1}" #index number is added by 1
  puts "#{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
if user_input.to_i = (1..9)
  puts "Playing #{song}"
else 
  "Invalid input, please try again"
end 


def exit_jukebox
puts "Goodbye"
end


def run(songs)
puts "Please enter a command:"
if user_input.downcase == "help"
    help
elsif user_input.downcase == "list"
  puts list(songs)
elsif user_input.downcase == "play"
  puts play(songs)
elsif user_input.downcase == "exit"
    exit_jukebox
end
end
end
