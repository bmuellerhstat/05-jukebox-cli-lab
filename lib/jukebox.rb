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
  for i in 0...songs.length
    puts "#{i+1}. #{songs[i]}"
  end
end
def play(songs) 
  puts "Please enter a song name or number:"
  song = gets.chomp
  for i in 0..songs.length
    if song ==songs[i]  
      puts song ="Playing #{songs[i]}"
    elsif song.to_i == i+1
      puts song ="Playing #{songs[i]}"
    end
  end
  if !song.include? "Playing"
    puts "Invalid input, please try again"
  end
end
def exit_jukebox
  puts "Goodbye"
end
def run(songs)
  help
  puts "Please enter a command:"
  command = ""
  while command != "exit"
  command = gets.chomp
    if command =="list"
      list(songs)
    elsif command == "play"
      play(songs)
    elsif command == "help"
      help
    end
  end
   exit_jukebox  
end
run(songs)