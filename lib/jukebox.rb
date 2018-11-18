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

def play (songs)
  puts "Please enter a song name or number:"
  song_name_or_number = gets.chomp
  is_number = song_name_or_number.scan(/^\d+$/).length > 0
  if is_number
    number = song_name_or_number.scan(/^\d+$/)[0].to_i
    if number > 0 && number < songs.length+1
      puts songs[number -1]
      return
    end
  else
    songs.each do |song|
      if song_name_or_number == song
        puts "Playing #{song}"
        return
      end
    end
  end
    puts "Invalid input, please try again"
end

def list (songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run (songs)
  help
  while true
    puts "Please enter a command:"
    command = gets.chomp
    if command == "list"
      list(songs)
    end
    if command == "play"
      play (songs)
    end
    if command == "help"
      help
    end
    if command == "exit"
      exit_jukebox
      return
    end
  end
end
