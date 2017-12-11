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
  help : displays this help message
  list : displays a list of songs you can play
  play : lets you choose a song to play
  exit : exits this program"
end

def list(songs)
   songs.each_with_index do |track, i|
     puts "#{i+1}. #{track}"
   end
end

def play(songs)
   puts "Please enter a song name or number:"
   chosen_song = gets.chomp
   if songs.include?chosen_song
     puts "Playing #{chosen_song}"
   elsif chosen_song.to_i > 0 && chosen_song.to_i <= songs.length #1~song.length
     puts "Playing #{songs[chosen_song.to_i-1]}"
   else
     puts "Invalid input, please try again"
   end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs) 
  loop do 
     puts "Please enter a command:"
     user_answer = gets.chomp
     if user_answer.downcase== "help"
       help
     elsif user_answer.downcase== "list"
       list(songs)
     elsif user_answer.downcase== "play"
       play(songs)
     elsif user_answer.downcase== "exit"
       exit_jukebox
     end 
     break if user_answer.downcase== "exit"
   end 
   
end 