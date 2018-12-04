songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end 

def list (songs)
  songs.each_with_index do |song, i|
    puts "#{i+1}. " << song
  end
end

def play (songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  list (songs)
  if songs.include?(user_input) 
    puts "Playing #{songs}"
  else 
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  loop do 
    puts "Please enter a command:"
    user_command = gets.chomp
    if user_command == "list"
      list (songs)
    elsif user_command == "play"
      play (songs)
    elsif user_command == "help"
      help
    elsif user_command == "exit"
      exit_jukebox
    end
    break if user_command == "exit"
  end
end