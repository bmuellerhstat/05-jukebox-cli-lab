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

def list(songs)
  arr = {}
songs.each_with_index do |song, i|
 # arr << {i+1: song}
  puts "#{i+1}. #{song}"
end
end

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def exit_jukebox
  puts "Goodbye"
end

def play
  puts "What's your song's number or name"
  num = gets.chomp
  arr.each do |number, song|
    if number == num
      puts song
      elsif num == song
      puts song
    else
      puts "Invalid input, please try again"
    end
  end
  
end