#!/usr/bin/env ruby

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
# HINT: Use the Array#each_with_index method to access the index number of a given element as you step through the iteration. Remember that arrays are indexed starting at 0. So, adding 1 to the index number at a given step of the iteration will result in the correct song number for the purposes of outputting your list of songs.

# METHOD 1             #Where should this method be put? 
def each_with_index()  #There is probably more to this, but I am not sure what. 
  songs.each do |song|
    song.index() + 1
  end
end

# METHOD 2 ✔
def help() 
  puts "
  I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program" 
end 
# help()

# METHOD 3 ✔
def list(songs)   
  puts "1. Phoenix - 1901
2. Tokyo Police Club - Wait Up
3. Sufjan Stevens - Too Much
4. The Naked and the Famous - Young Blood
5. (Far From) Home - Tiga
6. The Cults - Abducted
7. Phoenix - Consolation Prizes
8. Harry Chapin - Cats in the Cradle
9. Amos Lee - Keep It Loose, Keep It Tight"
end
# list(songs)

# METHOD 4 
def play(songs) 
  puts "Please enter a song name or number:"
  song_selection = gets.chomp 
  if song_selection == songs
    puts "Playing #{songs}"
  else
    puts "Invalid input, please try again!"
  end
end
# play(songs)

# METHOD 5
def exit_jukebox() 
  puts "Goodbye!"
end

# # METHOD 6
def run()
  help()
  puts "Please enter a command:"
  user_command = gets.strip  #.strip removes whitespace before and after user input, which .chomp removes whitespace after user input 
  
  #Assuming that the user would not type "help" 
  if user_command ==  "list" 
    list(songs) 
  elsif user_command == "play"
    play(songs)
  elsif user_command == "exit"
    exit_jukebox()
  else
    puts "Invalid input, please try again!"
    # run()
  end
end 
run()

# def say_hello(name)
#   "Hi #{name}!"
# end

# puts "Enter your name:"
# users_name = gets.chomp

# puts say_hello(users_name)

