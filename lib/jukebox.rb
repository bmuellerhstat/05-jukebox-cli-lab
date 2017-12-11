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
  songs.each_with_index do |track, i|
    puts "#{i+1}. #{track}"
  end
end

def play(songs)
   puts "Please enter a song name or number:"
   user_song = gets.chomp
   if songs.include?user_song
     puts "Playing #{user_song}"
   elsif user_song.to_i > 0 && user_song.to_i <= songs.length #1~song.length
    puts "Playing #{songs[user_song.to_i-1]}"
   else
     puts "Invalid input, please try again"
   end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs) 
    loop  do 
     puts "Please enter a command:"
     user_input=gets.chomp
     if user_input.downcase== "help"
       help
     elsif user_input.downcase== "list"
       list(songs)
      elsif user_input.downcase== "play"
       play(songs)
     elsif user_input.downcase== "exit"
       exit_jukebox
     end 
     break if user_input.downcase== "exit"
   end 
 end 