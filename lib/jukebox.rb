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

#def say_hello(name)
#  "Hi #{name}!"
#end 

#puts "Enter your name:"
#users_name = gets.chomp

#puts say_hello(users_name)

def help 
  puts  "I accept the following commands:
        - help : displays this help message
        - list : displays a list of songs you can play 
        - play : lets you choose a song to play 
        - exit : exits this program"
end 
def list(song_array)
  song_array.each do |song|
    puts "#{song_array.index(song) + 1} #{song}"
  end
end 
def play(song_array)
  puts "Please enter a song name or number:"
  users_song = gets.chomp
  if song_array.include?(users_song)
    puts "Playing #{users_song}"
  elsif ((1..song_array.count).to_a).include?(users_song.to_i)
    puts "Playing #{song_array[users_song.to_i - 1]}"
  else 
    puts "Invalid input, please try again"
  end 
end 
def exit_jukebox
  puts "Goodbye"
end 
def run(song_array)
  help()
  loop do 
    puts "Please enter a command:"
    command = gets.chomp
    if command == "help"
      help()
    elsif command == "list"
      list(song_array)
    elsif command == "play"
      play(song_array)
    elsif command == "exit"
      exit_jukebox()
      break
    end
  end
end 
    
  