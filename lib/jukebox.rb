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

def list(songs)
  songs.each_with_index{|song,i| puts "#{i+1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  resp = gets.chomp
  if songs.include?resp
    puts "Playing #{resp}"
  elsif resp.to_i > 0 && resp.to_i <= songs.length #1~song.length
    puts "Playing #{songs[resp.to_i-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  inp = ""
  until inp == "exit"
    puts "Please enter a command:"
    inp = gets.chomp.downcase
    case inp
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
      break
    end
  end
end
