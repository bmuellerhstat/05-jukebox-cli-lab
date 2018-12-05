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

def list(songs_arr)
  songs_arr.each.with_index(1) do |value, index|
    puts "#{index}. #{value}"
  end
end

def play(songs_arr)
  puts "Please enter a song name or number:"
  user_song = gets.chomp
  if songs_arr.include?(user_song)
    puts "Playing #{user_song}"
  elsif user_song.to_i == 1
    puts "Playing #{songs_arr[0]}"
  elsif user_song.to_i == 2
    puts "Playing #{songs_arr[1]}"
  elsif user_song.to_i == 3
    puts "Playing #{songs_arr[2]}"
  elsif user_song.to_i == 4
    puts "Playing #{songs_arr[3]}"
  elsif user_song.to_i == 5
    puts "Playing #{songs_arr[4]}"
  elsif user_song.to_i == 6
    puts "Playing #{songs_arr[5]}"
  elsif user_song.to_i == 7
    puts "Playing #{songs_arr[6]}"
  elsif user_song.to_i == 8
    puts "Playing #{songs_arr[7]}"
  elsif user_song.to_i == 9
    puts "Playing #{songs_arr[8]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(arr)
  help
  puts "Please enter a command:"
  command = gets.chomp.downcase
  until command == "exit"
    if command == "list"
      list(arr)
      break
    elsif command == "play"
      play(arr)
      break
    else
      puts "Invalid command"
      break
    end
  end
  if command == "exit"
      exit_jukebox
  end
end