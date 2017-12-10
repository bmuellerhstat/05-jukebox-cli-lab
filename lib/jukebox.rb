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
  puts "  1. Phoenix - 1901
  2. Tokyo Police Club - Wait Up
  3. Sufjan Stevens - Too Much
  4. The Naked and the Famous - Young Blood
  5. (Far From) Home - Tiga
  6. The Cults - Abducted
  7. Phoenix - Consolation Prizes
  8. Harry Chapin - Cats in the Cradle
  9. Amos Lee - Keep It Loose, Keep It Tight"
  songs.each_with_index do |song,index|
    index+1
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_choice = gets.chomp
  

  # if songs.include?(user_choice) 
  #   puts "Playing #{user_choice}"
  # elsif (1..songs.length-1).include?((user_choice.to_i)-1)
  #   puts "Playing #{songs[(user_choice.to_i)-1]}"
  # else
  #   puts "Invalid input, please try again"
  # end
  if songs.include?(user_choice)
     puts "Playing #{user_choice}"
  elsif (1..songs.length).include?(user_choice.to_i)
     puts "Playing #{songs[user_choice.to_i-1]}"
   else
     puts "Invalid input, please try again"
  end
  
  
  # if songs.include?(user_choice) 
  #   puts "Playing #{user_choice}"
  # elsif songs.include?(songs[(user_choice.to_i)-1])
  #   puts "Playing #{songs[(user_choice.to_i)-1]}"
  # else
  #   puts "Invalid input, please try again"
  # end
  
  # songs.each_with_index do |song,index|
  #   index=1
  #   if song.include?(user_choice) 
  #     puts "Playing #{user_choice}"
  #   elsif index.include? (user_choice.to_i) 
  #     puts "Playing #{user_choice}"
  #   else
  #   puts "Invalid input, please try again"
  #   end
  # end
  
    # if user_choice <= songs.length
  #   puts "Playing #{user_choice}"
  # else
  #   puts "Invalid input, please try again"
  # end
  
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_answer = gets.chomp
  loop do
    if user_answer == "exit"
      exit_jukebox
      break
    elsif user_answer == "list"
      list(songs)
      break
    elsif user_answer == "play"
      play(songs)
      break
    elsif user_answer == "help"
      help
      break
    else
      help
      break
    end
  end
end

run(songs)