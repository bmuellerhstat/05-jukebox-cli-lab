songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight",
]

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs_array)
  songs_array.each.with_index(1) do |song,index|
    puts "#{index}. #{song}"
  end
end

def play(songs_array)
  puts "Please enter a song name or number:"
  song_request = gets.chomp
  
  if songs_array.index(song_request) != nil
    puts "Playing #{songs_array[songs_array.index(song_request)]}"
  elsif /[0-9]/ =~ song_request && songs_array[song_request.to_i-1] != nil
    puts "Playing #{songs_array[song_request.to_i-1]}"
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
    
    case user_command
    when "exit"
      exit_jukebox
      break
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    end
  end
end