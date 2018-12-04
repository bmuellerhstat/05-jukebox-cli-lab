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

# def say_hello(name)
#   "Hi #{name}!"
# end
# puts "Enter your name:"
# users_name = gets.chomp
# puts say_hello(users_name)

def help
  puts "
  I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program
  "
end

def list(songs)
  songs.each.with_index do |song,index|
    puts "#{index +1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_song = gets.chomp
  songs.each.with_index do |song, index|
    if user_song == song
      puts "Playing #{song}"
    elsif user_song.to_i < index #it will always be less than bc the index begins at 0
      song = songs[user_song.to_i-1] #the array begins with 0, therefore, 1 should be 0, which is minus 1
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
    end
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
      list(songs)
    elsif user_command == "play"
      play(songs)
    elsif user_command == "help"
      help
    elsif user_command == "exit"
      exit_jukebox
    end
    break
  end
end

